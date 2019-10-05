# CIS4Azure-Pester
An implementation of the CIS 4 Azure controls using Pester testing of ARM templates.

CIS is the Center for Internet Security and this group has written some prescriptive security suggestions for multiple clouds, including Azure.  

Pester is a testing framework for Powershell that is capable of describing assertions and outputting NUnitXml results, which Azure DevOps can pull into the pipline to show test results.

The CIS4Azure-Pester project pulls these two together to provide a testing framework to test Azure ARM templates before they are deployed to an Azure environment.  This ensures that Azure Inrastructure deployments are CIS Benchmark compliant as early in the process as possible.  Developers recieve feedback during the build phase of the project - as early as possible.

## Usage
The ```CIS4Azure.Tests.Pester``` package contains Pester tests that can be run from an Azure DevOps during Azure Infrastructure deployments.

You need to make sure a current version of Pester is installed, and then call ```Invoke-Pester``` with the template location as a parameter.  ```Invoke-Pester``` recursively searches for Pester tests with ```*.Tests.ps1``` as the search criteria and runs them.  After restoring the CIS4Azure package, these tests will be in the /packages directory, making them available to ```Invoke-Pester``` to run.

Because we're testing ARM templates, we'll need to define our NuGet package requirements a little differently than a csproj.

You'll use ```packages.config``` to reference the package on nuget.org:
```xml
<?xml version="1.0" encoding="utf-8"?>
<packages>
  <package id="CIS4Azure.Tests.Pester" version="1.1.0" />
</packages>
``` 

If you are wanting to run tests as a part of an Azure DevOps pipeline, read on.  If you are wanting to run the tests locally, you'll need to run nuget restore in your ARM Template directory.  Then you can run Invoke-Pester.  It should find the CIS4Azure tests in the packages folder.

## Example YAML Pipeline
```yaml
trigger:
- master

pool:
  vmImage: 'ubuntu-latest'

steps:

- task: NuGetCommand@2
  displayName: Fetch pester test package from Azure Artifacts Feed
  inputs:
    command: 'restore'
    restoreSolution: 'packages.config'
    restoreDirectory: 'packages'
    feedsToUse: 'select'
    vstsFeed: '620c26f5-655a-41b4-97d6-d2e882ecb54b'

- pwsh: Install-Module -Name Pester -Force
  displayName: 'Install Pester'

- pwsh: |
    $parameters = @{ TemplatePath = "azuredeploy.json" }
    $script = @{ Path = "./packages"; Parameters = $parameters }

    Invoke-Pester -Script $script -OutputFile Tests.Report.xml -OutputFormat NUnitXml
  displayName: 'Run Pester Tests'

- task: PublishTestResults@2
  inputs:
    testResultsFormat: 'NUnit'
    testResultsFiles: '**/Tests.Report*.xml'
    failTaskOnFailedTests: true
```
