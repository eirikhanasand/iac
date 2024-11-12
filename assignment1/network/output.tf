

# Outputs


output "vnet-id" {
  value = azurerm_virtual_network.eirik-vnet.id
}

output "subnet-id" {
  value = azurerm_subnet.eirik-sn.id
}

output "nsg-id" {
  value = azurerm_network_security_group.eirik-nsg.id
}

output "subnet_id" {
  value = azurerm_subnet.eirik-sn.id
}
