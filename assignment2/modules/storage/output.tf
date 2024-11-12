

# Outputs


output "eirik-sa" {
  value = azurerm_storage_account.eirik-sa
}

output "nsg-id" {
  value = var.nsg-id
}

output "sa-primary_key" {
  value = azurerm_storage_account.eirik-sa.primary_access_key
}

output "sa-id" {
  value = azurerm_storage_account.eirik-sa.id
}
