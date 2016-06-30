

Import-Module AWSPowerShell
Import-Module AwsCfn

#Set-AWSCredentials -AccessKey AKIAIOSFODNN7EXAMPLE -SecretKey wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY -StoreAs MyProfileName
#Initialize-AWSDefaults -ProfileName MyProfileName -Region us-west-1

$parameter_file = Get-Content "D:\Users\bengelse\Documents\Amazone\AWS_Cloud_Formations\parameters.json" | ConvertFrom-Json
$template = Get-Content "D:\Users\bengelse\Documents\Amazone\AWS_Cloud_Formations\test.json"

$parameters = @($parameter_file)

New-CFNStack -StackName myStack -TemplateBody "$template" -Parameters $parameters
