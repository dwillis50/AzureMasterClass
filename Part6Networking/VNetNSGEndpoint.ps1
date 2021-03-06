$serviceTags = Get-AzNetworkServiceTag -Location southcentralus
$serviceTags.Values | Where-Object {$_.Name -eq "Storage.SouthCentralUS"}
($serviceTags.Values | Where-Object {$_.Name -eq "Storage.SouthCentralUS"}).Properties.AddressPrefixes
($serviceTags.Values | Where-Object {$_.Name -eq "Storage.SouthCentralUS"}).Properties.AddressPrefixes.count

($serviceTags.Values | Where-Object {$_.Name -eq "SQL.SouthCentralUS"}).Properties.AddressPrefixes

#lookup against Azure DNS default private zone
nslookup savazuusscds01.internal.cloudapp.net 168.63.129.16
