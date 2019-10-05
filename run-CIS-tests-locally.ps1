Write-Host "*************************************************************************************************************"
$files = Get-ChildItem ./test-templates

foreach ($file in $files)
{
    $parameters = @{ TemplatePath = "./test-templates/" + $file.Name }
    $script = @{ Path = "./pester"; Parameters = $parameters }

    Write-Host *************************************
    Write-Host Testing $file
    Invoke-Pester -Script $script
}