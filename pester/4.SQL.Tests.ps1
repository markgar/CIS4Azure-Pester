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
}
