$vnetName = "test_prep_vnet"
$rgName = "test_prep_rg"


$t = Get-AzVirtualNetwork -Name $vnetName

if($t -eq $null) {
    # Create the virtual network
    $vnet = @{
        Name = $vnetName
        ResourceGroupName = $rgName
        Location = 'Southeast Asia'
        AddressPrefix = '10.0.0.0/16'    
    }
    $virtualNetwork = New-AzVirtualNetwork @vnet

    # Add a subnet
    $subnet = @{
        Name = 'default'
        VirtualNetwork = $virtualNetwork
        AddressPrefix = '10.0.0.0/24'
    }
    $subnetConfig = Add-AzVirtualNetworkSubnetConfig @subnet

    # Associate the subnet to the virtual network
    $virtualNetwork | Set-AzVirtualNetwork

}


