

# Outputs


output "vm-object_id" {
    value = azurerm_linux_virtual_machine.eirik-vm.identity[0].principal_id
}

output "vm-id" {
    value = azurerm_linux_virtual_machine.eirik-vm.id
}
