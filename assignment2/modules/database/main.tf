

# SQL database.


provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "eirik-rg" {
  name     = var.rg-name
  location = var.location
}

resource "azurerm_mssql_server" "eirik-sql_server" {
  name                         = var.sql-server_name
  resource_group_name          = var.rg-name
  location                     = var.location
  version                      = var.sql-version
  administrator_login          = var.sql-administrator_login
  administrator_login_password = var.sql-administrator_password
}

resource "azurerm_mssql_database" "eirik-sql_db" {
  name         = var.sql-name
  server_id    = azurerm_mssql_server.eirik-sql_server.id
  collation    = var.sql-collation
  license_type = var.sql-license_type
  max_size_gb  = var.sql-max_size_gb
  sku_name     = var.sql-sku_name
  enclave_type = var.sql-enclave_type

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}
