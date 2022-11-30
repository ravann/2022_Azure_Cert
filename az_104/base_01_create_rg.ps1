$rgName = "test_prep_rg"
$loc = "Southeast Asia"

$t = Get-AzResourceGroup -Name $rgName  

if($t -eq $null) {
    echo "Resource group doesn't exist ... creating ... "
    New-AzResourceGroup `
        -Name $rgName `
        -Location $loc
} else { 
    echo "Resource group exist ... skipping ... "
}

