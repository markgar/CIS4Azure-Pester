
<#PSScriptInfo

.VERSION 0.0.1

.GUID 026e99cd-b540-440b-bcd9-4868e2b7f1da

.AUTHOR Mark Garner

.COMPANYNAME

.COPYRIGHT

.TAGS

.LICENSEURI

.PROJECTURI

.ICONURI

.EXTERNALMODULEDEPENDENCIES 

.REQUIREDSCRIPTS

.EXTERNALSCRIPTDEPENDENCIES

.RELEASENOTES


.PRIVATEDATA

#>

<# 

.DESCRIPTION 
 CIS4Azure 

#> 
param (
    [Parameter(Mandatory = $true)]
    [string]$TemplatePath 
)

function Test-StorageAccounts {
    Param(
        [parameter(Mandatory = $true)] [object] $StorageAccountsToTest
    )

    foreach ($storageAccount in $StorageAccountsToTest) {

        It "3.1 - Ensures that 'Secure transfer required' is set to 'Enabled'" {
            $expectedValue = $true
            $templateProperty = $storageAccount.properties.supportsHttpsTrafficOnly
            $templateProperty | Should Be $expectedValue
        }      
  

        It "3.2 - Ensures that 'Storage service encyption' is set to Enabled for Blob Service" {
            $expectedValue = $true
            $templateProperty = $storageAccount.properties.encryption.services.blob.enabled
            $templateProperty | Should Be $expectedValue
        }

        It "3.6 - Ensures that 'Storage service encyption' is set to Enabled for File Service" {
            $expectedValue = $true
            $templateProperty = $storageAccount.properties.encryption.services.file.enabled
            $templateProperty | Should Be $expectedValue
        }

    }

}

function Test-StorageContainers {
    Param(
        [parameter(Mandatory = $true)] [object] $ContainersToTest
    )

    # loop through these items
    foreach ($container in $ContainersToTest) {

        It "3.7 - Ensures that 'Public access level' is set to Private for blob containers" {
            $expectedValue = "None"
            $templateProperty = $container.properties.publicAccess
            $templateProperty | Should Be $expectedValue
        }      
    
    }
}


# load text of arm template
$templateARM = Get-Content $TemplatePath -Raw -ErrorAction SilentlyContinue

# load template into object
$template = ConvertFrom-Json -InputObject $templateARM -ErrorAction SilentlyContinue

# select only resources in the arm template that are of this type
$storageAccountsToTest = $template.resources | Where-Object { $_.type -eq "Microsoft.Storage/storageAccounts" }

# select only resources in the arm template that are of this type
$containersToTest = $template.resources | Where-Object { $_.type -eq "Microsoft.Storage/storageAccounts/blobServices/containers" }



Describe 'CIS Benchmark for Azure - Stroage' {
  
    Context '1 Identity and Access Management - Level 1' {
    
        # TODO: determine if we need to loop through a list of resources
        # loop through these items
        # foreach ($iam in $iamToTest) {
        It -Pending "1.1 - Ensure that multi-factor authentication is enabled for all privileged users" {
            # Need to add logic for a real test here.
        }
          
        It -Pending "1.3 - Ensure that there are no guest users" {
            # Need to add logic for a real test here.
        }
          
        It -Pending "1.5 - Ensure that 'Number of methods required to reset' is set to '2'" {
            # Need to add logic for a real test here.
        }
          
        It -Pending "1.6 - Ensure that 'Number of days before users are asked to re-confirm their authentication information' is not set to '0'" {
            # Need to add logic for a real test here.
        }
          
        It -Pending "1.7 - Ensure that 'Notify users on password resets?' is set to 'Yes'" {
            # Need to add logic for a real test here.
        }
          
        It -Pending "1.15 - Ensure that 'Restrict access to Azure AD administration portal' is set to 'Yes'" {
            # Need to add logic for a real test here.
        }
          
        It -Pending "1.21 - Ensure that 'Enable `"All Users`" group' is set to 'Yes'" {
            # Need to add logic for a real test here.
        }
          
        It -Pending "1.22 - Ensure that 'Require Multi-Factor Auth to join devices' is set to 'Yes'" {
            # Need to add logic for a real test here.
        }
        # TODO: determine if we need to loop through a list of resources    
        # }
        
    }
    
    Context '1 Identity and Access Management - Level 2' {
        It -Pending "1.2 - Ensure that multi-factor authentication is enabled for all non-privileged users" {
            # need a test here
        }
        
        It -Pending "1.4 - Ensure that 'Allow users to remember multi-factor authentication on devices they trust' is 'Disabled'" {
            # need a test here
        }
        
        It -Pending "1.8 - Ensure that 'Notify all admins when other admins reset their password?' is set to 'Yes'" {
            # need a test here
        }
        
        It -Pending "1.9 - Ensure that 'Users can consent to apps accessing company data on their behalf' is set to 'No'" {
            # need a test here
        }
        
        It -Pending "1.10 - Ensure that 'Users can add gallery apps to their Access Panel' is set to 'No'" {
            # need a test here
        }
        
        It -Pending "1.11 - Ensure that 'Users can register applications' is set to 'No'" {
            # need a test here
        }
        
        It -Pending "1.12 - Ensure that 'Guest users permissions are limited' is set to 'Yes'" {
            # need a test here
        }
        
        It -Pending "1.13 - Ensure that 'Members can invite' is set to 'No'" {
            # need a test here
        }
        
        It -Pending "1.14 - Ensure that 'Guests can invite' is set to 'No'" {
            # need a test here
        }
        
        It -Pending "1.16 - Ensure that 'Self-service group management enabled' is set to 'No'" {
            # need a test here
        }
        
        It -Pending "1.17 - Ensure that 'Users can create security groups' is set to 'No'" {
            # need a test here
        }
        
        It -Pending "1.18 - Ensure that 'Users who can manage security groups' is set to 'None'" {
            # need a test here
        }
        
        It -Pending "1.19 - Ensure that 'Users can create Office 365 groups' is set to 'No'" {
            # need a test here
        }
        
        It -Pending "1.20 - Ensure that 'Users who can manage Office 365 groups' is set to 'None'" {
            # need a test here
        }
        
        It -Pending "1.23 - Ensure that no custom subscription owner roles are created" {
            # need a test here
        }   
    }

     
    Context '2 Security Center - Level 1' {
    
        # TODO: determine if we need to loop through a list of resources
        # loop through these items
        # foreach ($iam in $iamToTest) {
        It -Pending "rec # - title" {
            # need a test here
        }
         
        It -Pending "2.2 - Ensure that 'Automatic provisioning of monitoring agent' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "2.3 - Ensure that 'System updates' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "2.4 - Ensure that 'Security Configurations' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "2.5 - Ensure that 'Endpoint protection' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "2.6 - Ensure that 'Disk encryption' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "2.7 - Ensure that 'Network security groups' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "2.8 - Ensure that 'Web application firewall' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "2.9 - Ensure that 'Next generation firewall' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "2.10 - Ensure that 'Vulnerability assessment' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "2.11 - Ensure that 'Storage Encryption' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "2.12 - Ensure that 'JIT Network Access' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "2.13 - Ensure that 'Adaptive Application Controls' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "2.14 - Ensure that 'SQL auditing & Threat detection' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "2.15 - Ensure that 'SQL Encryption' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "2.16 - Ensure that 'Security contact emails' is set" {
            # need a test here
        }
         
        It -Pending "2.17 - Ensure that security contact 'Phone number' is set" {
            # need a test here
        }
         
        It -Pending "2.18 - Ensure that 'Send me emails about alerts' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "2.19 - Ensure that 'Send email also to subscription owners' is set to 'On'" {
            # need a test here
        }
             
        # TODO: determine if we need to loop through a list of resources    
        # }
        
    }
    
    Context '2 Security Center - Level 1' {
        It -Pending "2.1 - Ensure that standard pricing tier is selected" {
            # need a test here
        }
    }

    Context '3 Storage Acounts - Level 1'  {
    
        Test-StorageAccounts -StorageAccountsToTest $storageAccountsToTest
    
    }

    Context '3 Storage Acounts - Level 2'  {
    
        Test-StorageContainers -ContainersToTest $containersToTest
    
    }

    Context '4 SQL Services - Level 1' {
    
        # TODO: determine if we need to loop through a list of resources
        # loop through these items
        # foreach ($iam in $iamToTest) {
        It -Pending "4.1.1 - Ensure that 'Auditing' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "4.1.2 - Ensure that 'Threat Detection' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "4.1.3 - Ensure that 'Threat Detection types' is set to 'All'" {
            # need a test here
        }
         
        It -Pending "4.1.4 - Ensure that 'Send alerts to' is set" {
            # need a test here
        }
         
        It -Pending "4.1.5 - Ensure that 'Email service and co-administrators' is 'Enabled'" {
            # need a test here
        }
         
        It -Pending "4.1.6 - Ensure that 'Auditing' Retention is 'greater than 90 days'" {
            # need a test here
        }
         
        It -Pending "4.1.7 - Ensure that 'Threat Detection' Retention is 'greater than 90 days'" {
            # need a test here
        }
         
        It -Pending "4.1.8 - Ensure that Azure Active Directory Admin is configured" {
            # need a test here
        }
         
        It -Pending "4.2.1 - Ensure that 'Auditing' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "4.2.2 - Ensure that 'Threat Detection' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "4.2.3 - Ensure that 'Threat Detection types' is set to 'All'" {
            # need a test here
        }
         
        It -Pending "4.2.4 - Ensure that 'Send alerts to' is set" {
            # need a test here
        }
         
        It -Pending "4.2.5 - Ensure that 'Email service and co-administrators' is 'Enabled'" {
            # need a test here
        }
         
        It -Pending "4.2.6 - Ensure that 'Data encryption' is set to 'On'" {
            # need a test here
        }
         
        It -Pending "4.2.7 - Ensure that 'Auditing' Retention is 'greater than 90 days'" {
            # need a test here
        }
         
        It -Pending "4.2.8 - Ensure that 'Threat' Retention is 'greater than 90 days'" {
            # need a test here
        }     
        # TODO: determine if we need to loop through a list of resources    
        # }
        
    }

    Context '5 Logging - Level 1' {
        It -Pending "5.1 - Ensure that a Log Profile exists" {
            # need a test here
        }
       
        It -Pending "5.2 - Ensure that Activity Log Retention is set 365 days or greater" {
            # need a test here
        }
       
        It -Pending "5.3 - Ensure that Activity Log Alert exists for Create Policy Assignment" {
            # need a test here
        }
       
        It -Pending "5.4 - Ensure that Activity Log Alert exists for Create or Update Network Security Group" {
            # need a test here
        }
       
        It -Pending "5.5 - Ensure that Activity Log Alert exists for Delete Network Security Group" {
            # need a test here
        }
       
        It -Pending "5.6 - Ensure that Activity Log Alert exists for Create or Update Network Security Group Rule" {
            # need a test here
        }
       
        It -Pending "5.7 - Ensure that Activity Log Alert exists for Delete Network Security Group Rule" {
            # need a test here
        }
       
        It -Pending "5.8 - Ensure that Activity Log Alert exists for Create or Update Security Solution" {
            # need a test here
        }
       
        It -Pending "5.9 - Ensure that Activity Log Alert exists for Delete Security Solution" {
            # need a test here
        }
       
        It -Pending "5.10 - Ensure that Activity Log Alert exists for Create or Update SQL Server Firewall Rule" {
            # need a test here
        }
       
        It -Pending "5.11 - Ensure that Activity Log Alert exists for Delete SQL Server Firewall Rule" {
            # need a test here
        }
       
        It -Pending "5.12 - Ensure that Activity Log Alert exists for Update Security Policy" {
            # need a test here
        }
       
        It -Pending "5.13 - Ensure that logging for Azure KeyVault is 'Enabled'" {
            # need a test here
        }   
        
    }

    Context '6 Networking - Level 1' {
        It -Pending "6.1 - Ensure that RDP access is restricted from the internet" {
            # need a test here
        }
      
        It -Pending "6.2 - Ensure that SSH access is restricted from the internet" {
            # need a test here
        }
      
        It -Pending "6.3 - Ensure that SQL server access is restricted from the internet" {
            # need a test here
        }
      
        It -Pending "6.5 - Ensure that Network Watcher is 'Enabled'" {
            # need a test here
        }
     
    }
    Context '6 Networking - Level 2' {  
        It -Pending "6.4 - Ensure that Network Security Group Flow Log retention period is 'greater than 90 days'" {
            # Need to add logic for a real test here.
        }
    }


    Context '7 Virtual Machines - Level 1' {
    
        It -Pending "7.1 - Ensure that VM agent is installed" {
            # need a test here
        }
       
        It -Pending "7.2 - Ensure that 'OS disk' are encrypted" {
            # need a test here
        }
       
        It -Pending "7.3 - Ensure that 'Data disks' are encrypted" {
            # need a test here
        }
       
        It -Pending "7.4 - Ensure that only approved extensions are installed" {
            # need a test here
        }
       
        It -Pending "7.5 - Ensure that the latest OS Patches for all Virtual Machines are applied" {
            # need a test here
        }
       
        It -Pending "7.6 - Ensure that the endpoint protection for all Virtual Machines is installed" {
            # need a test here
        }
    
    }
    
  
}



