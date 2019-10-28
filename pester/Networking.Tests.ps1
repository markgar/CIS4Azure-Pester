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
}
