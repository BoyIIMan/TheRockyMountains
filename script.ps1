$path = "/TheRockyMountains/Full-AzureLab-Template/Modules" | Get-ChildItem 
write-host $path
foreach ($file in $path | Get-ChildItem -Recurse -File)
{
    new-item main.tf outputs.tf variables.tf
}