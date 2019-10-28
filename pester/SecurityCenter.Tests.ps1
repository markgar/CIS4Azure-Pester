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
}
