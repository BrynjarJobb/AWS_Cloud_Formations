Import-Module AWSPowerShell
Import-Module AwsCfn

#Set-AWSCredentials -AccessKey AKIAIOSFODNN7EXAMPLE -SecretKey wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY -StoreAs MyProfileName
#Initialize-AWSDefaults -ProfileName MyProfileName -Region us-west-1

$parameter_file = Get-Content "D:\Users\bengelse\Documents\Amazone\AWS_Cloud_Formations\parameters.json" | ConvertFrom-Json

$parameters = @()
foreach ($parameter in $parameter_file)
{
    $parameter_object= new-object Amazon.CloudFormation.Model.Parameter
    
    $parameter_object.ParameterKey = $parameter.ParameterKey
    $parameter_object.ParameterValue = $parameter.ParameterValue

    $parameters+= @($parameter_object)


}


New-CFNStack -StackName myStack -TemplateBody "$stack" -Parameters $parameters
