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
