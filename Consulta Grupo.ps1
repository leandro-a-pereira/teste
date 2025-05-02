$matriculas = get-content -Path C:\temp\1.txt
foreach ($m in $matriculas)
{
$users = Get-ADPrincipalGroupMembership $m | where-object {$_.name -like "GRUPOTAL_*"}

"Matricula $($m) Grupo $($users)" | Out-File c:\temp\11.txt -Append
}
