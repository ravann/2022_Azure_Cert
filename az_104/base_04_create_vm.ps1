$rgName = "test_prep_rg"
$loc = "Southeast Asia"
$vnetName = "test_prep_vnet"
$nsgName = "test_prep_nsg"
$vmName = "test-prep-vm1"
$VMSize = "Standard_D2d_v4"

# Create credential
$VMAdmin = "vmuser"
$pass = Get-Content -Path .\vmpass.txt
$spass = ConvertTo-SecureString $pass -AsPlainText -Force

$Credential = New-Object System.Management.Automation.PSCredential ($VMAdmin, $spass);

# Create VM
New-AzVM `
    -Name $vmName `
    -ResourceGroupName $rgName `
    -Location $loc `
    -Credential $Credential `
    -VirtualNetworkName $vnetName `
    -SubnetName "default" `
    -SecurityGroupName $nsgName `
    -Size $VMSize `
    -Verbose
