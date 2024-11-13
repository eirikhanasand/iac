

# SQL database.


provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "eirik-rg" {
  name     = var.rg-name
  location = var.location
}

resource "azurerm_mssql_server" "eirik-sql-server" {
  name                         = var.sql-server-name
  resource_group_name          = var.rg-name
  location                     = var.location
  version                      = var.sql-version
  administrator_login          = var.sql-administrator-login
  administrator_login_password = var.sql-administrator-password
}

resource "azurerm_mssql_database" "eirik-sql-db" {
  name         = var.sql-name
  server_id    = azurerm_mssql_server.eirik-sql-server.id
  collation    = var.sql-collation
  license_type = var.sql-license-type
  max_size_gb  = var.sql-max-size-gb
  sku_name     = var.sql-sku-name
  enclave_type = var.sql-enclave-type

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}
