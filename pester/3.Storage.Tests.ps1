param (
  [Parameter(Mandatory = $true)]
  [string]$TemplatePath 
)

# load text of arm template
$templateARM = Get-Content $TemplatePath -Raw -ErrorAction SilentlyContinue

# load template into object
$template = ConvertFrom-Json -InputObject $templateARM -ErrorAction SilentlyContinue

# select only resources in the arm template that are of this type
$storageAccountsToTest = $template.resources | Where-Object { $_.type -eq "Microsoft.Storage/storageAccounts" }

# select only resources in the arm template that are of this type
$containersToTest = $template.resources | Where-Object { $_.type -eq "Microsoft.Storage/storageAccounts/blobServices/containers" }


Describe 'CIS Benchmark for Azure' {
  
  Context '3 Storage Acounts' {
    
    # loop through these items
    foreach ($storageAccount in $storageAccountsToTest) {
      
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

    # loop through these items
    foreach ($container in $containersToTest) {

      
      It "3.7 - Ensures that 'Public access level' is set to Private for blob containers" {
        $expectedValue = "None"
        $templateProperty = $container.properties.publicAccess
        $templateProperty | Should Be $expectedValue
      }      
          
    
    }
    
  }
}
