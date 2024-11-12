

# Initialization Code


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }
}

provider "azurerm" {
  features {}
}


# ----- Resource Group -----


resource "azurerm_resource_group" "eirik-rg" {
  name     = var.rg-name
  location = var.location
}


# ----- Modules -----


module "networking" {
  source              = "../modules/networking"
  rg-name             = var.rg-name
  location            = var.location
  vn-name             = var.vn-name
  sn-name             = var.sn-name
  sn-address_prefixes = var.sn-address_prefixes
  vn-address_space    = var.vn-address_space
  nsg-name            = var.nsg-name
  rule-ssh            = var.rule-ssh
}

module "storage" {
  source                      = "../modules/storage"
  rg-name                     = var.rg-name
  resource_group_id           = azurerm_resource_group.eirik-rg.id
  location                    = var.location
  nsg-id                      = module.networking.nsg-id
  sa-account_replication_type = var.sa-account_replication_type
  sa-account_tier             = var.sa-account_tier
  sa-name                     = var.sa-name
  sa-tags                     = var.sa-tags
  sc-container_access_type    = var.sc-container_access_type
  sc-name                     = var.sc-name
}

module "app_service" {
  source   = "../modules/app_service"
  rg-name  = var.rg-name
  location = var.location
  sp-name  = var.sp-name
  sp-os    = var.sp-os
  sp-sku   = var.sp-sku
}

module "database" {
  source                     = "../modules/database"
  rg-name                    = var.rg-name
  location                   = var.location
  sql-server_name            = var.sql-server_name
  sql-version                = var.sql-version
  sql-administrator_login    = var.sql-administrator_login
  sql-administrator_password = var.sql-administrator_password
  sql-name                   = var.sql-name
  sql-license_type           = var.sql-license_type
  sql-sku_name               = var.sql-sku_name
  sql-enclave_type           = var.sql-enclave_type
  sql-max_size_gb            = var.sql-max_size_gb
  sql-collation              = var.sql-collation
}

module "loadbalancer" {
  source            = "../modules/loadbalancer"
  rg-name           = var.rg-name
  location          = var.location
  lb-name           = var.lb-name
  lb-public_ip      = var.lb-public_ip
  lb-frontend_ip    = var.lb-frontend_ip
  allocation_method = var.allocation_method
}


# ----- Outputs -----


output "vnet-id" {
  description = "VNET ID"
  value       = module.networking.subnet_id
}

output "subnet_id" {
  description = "Subnet ID"
  value       = module.networking.subnet-id
}

output "nsg-id" {
  description = "Network Security Group ID"
  value       = module.networking.nsg-id
}

output "storage_account_id" {
  description = "Storage Account ID"
  value       = module.storage.sa-id
}

output "storage_account_primary_access_key" {
  description = "Storage Account Primary Access Key"
  value       = var.sa-primary_key
}
