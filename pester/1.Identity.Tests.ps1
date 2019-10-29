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
}
