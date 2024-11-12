

# To provision Azure Key Vault and store secrets.


data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "eirik-kv" {
  name                = var.kv-name
  location            = var.location
  resource_group_name = var.rg-name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = var.kv-sku

  access_policy {
    tenant_id          = data.azurerm_client_config.current.tenant_id
    object_id          = var.vm-object_id
    secret_permissions = var.kv-secret_permissions
  }
}

resource "azurerm_key_vault_secret" "vm_username" {
  name         = var.kv-vm_username_name
  value        = var.vm-admin_username
  key_vault_id = azurerm_key_vault.eirik-kv.id
}

# VM Password Secret
resource "azurerm_key_vault_secret" "vm_password" {
  name         = var.kv-vm_password_name
  value        = var.vm-admin_password
  key_vault_id = azurerm_key_vault.eirik-kv.id
}

# Storage Account Access Key Secret
resource "azurerm_key_vault_secret" "storage_access_key" {
  name         = var.kv-sak
  value        = var.sa-primary_key
  key_vault_id = azurerm_key_vault.eirik-kv.id
}
