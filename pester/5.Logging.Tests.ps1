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
}
