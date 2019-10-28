param (
  [Parameter(Mandatory = $true)]
  [string]$TemplatePath 
)

# load text of arm template
$templateARM = Get-Content $TemplatePath -Raw -ErrorAction SilentlyContinue

# load template into object
$template = ConvertFrom-Json -InputObject $templateARM -ErrorAction SilentlyContinue

# select only resources in the arm template that are of this type
# TODO: determine if we need to loop through a list of resources
# $iamToTest = $template.resources | Where-Object { $_.type -eq "Microsoft.Storage/storageAccounts" }

Describe 'CIS Benchmark for Azure' {
  
  Context '8 Other Security Considerations - Level 1' {
    
    It -Pending "8.1 - Ensure that the expiry date is set on all Keys" {
      # need a test here
    }
   
   It -Pending "8.2 - Ensure that the expiry date is set on all Secrets" {
      # need a test here
    } 
   
  }
}
