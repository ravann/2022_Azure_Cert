$rgName = "test_prep_rg"
$loc = "Southeast Asia"
$nsgName = "test_prep_nsg"

$t = Get-AZNetworkSecurityGroup -Name $name

if($t -eq $null) {
    New-AzNetworkSecurityGroup -Name $nsgName -ResourceGroupName $rgName  -Location $loc
}
