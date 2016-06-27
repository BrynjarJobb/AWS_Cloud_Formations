
$template = Get-Content D:\Users\bengelse\Documents\Templates\milestone1.json
New-CFNStack -StackName "Milestone1" -TemplateBody "$template"

echo "Creating stack"