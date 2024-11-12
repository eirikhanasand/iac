

# Creates an Azure Storage Account and a storage container.


resource "azurerm_storage_account" "eirik-sa" {
    name                     = var.sa-name
    resource_group_name      = var.rg-name 
    location                 = var.location
    account_tier             = var.sa-account_tier
    account_replication_type = var.sa-account_replication_type

    tags = {
        environment = var.sa-tags
    }

    depends_on = [var.resource_group_id]
}

resource "azurerm_storage_container" "eirik-sc" {
    name = var.sc-name
    storage_account_name = azurerm_storage_account.eirik-sa.name
    container_access_type = var.sc-container_access_type
}
