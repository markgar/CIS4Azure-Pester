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
}
