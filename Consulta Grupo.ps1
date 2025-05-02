$matriculas = get-content -Path C:\temp\1.txt
foreach ($m in $matriculas)
{
$users = Get-ADPrincipalGroupMembership $m | where-object {$_.name -like "VPNRA_*"}

"Matricula $($m) Grupo $($users)" | Out-File c:\temp\11.txt -Append
}




#(Get-ADGroupMember VPN_TRANSICAO).count #relação D todos que estão no grupo transição

#get-adgroupmember vpnra_cyber | fl name | Out-File c:\temp\teste.txt -Append


#Get-ADGroupMember VPN_TRANSICAO | fl name | out-file c:\temp\vpn_transicao.txt
