

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


module "key_vault" {
  source                = "./key_vault"
  rg-name               = var.rg-name
  location              = var.location
  vm-object_id          = module.virtual_machine.vm-object_id
  kv-vm_username_name   = var.kv-vm_username_name
  kv-vm_password_name   = var.kv-vm_password_name
  vm-admin_password     = var.vm-admin_password
  kv-name               = var.kv-name
  kv-sak                = var.kv-sak
  kv-sku                = var.kv-sku
  kv-secret_permissions = var.kv-secret_permissions
  sa-primary_key        = var.sa-primary_key
  vm-admin_username     = var.vm-admin_username
}

module "network" {
  source              = "./network"
  rg-name             = var.rg-name
  location            = var.location
  vn-name             = var.vn-name
  sn-name             = var.sn-name
  sn-address_prefixes = var.sn-address_prefixes
  vn-address_space    = var.vn-address_space
  nsg-name            = var.nsg-name
  rule-ssh            = var.rule-ssh
}

module "storage_account" {
  source                      = "./storage_account"
  rg-name                     = var.rg-name
  resource_group_id           = azurerm_resource_group.eirik-rg.id
  location                    = var.location
  nsg-id                      = module.network.nsg-id
  sa-account_replication_type = var.sa-account_replication_type
  sa-account_tier             = var.sa-account_tier
  sa-name                     = var.sa-name
  sa-tags                     = var.sa-tags
  sc-container_access_type    = var.sc-container_access_type
  sc-name                     = var.sc-name
}

module "virtual_machine" {
  source                                 = "./virtual_machine"
  admin_username                         = var.vm-admin_password
  admin_password                         = var.vm-admin_password
  rg-name                                = var.rg-name
  location                               = var.location
  ni-ipconfig_name                       = var.ni-ipconfig_name
  vm-os_disk_caching                     = var.vm-os_disk_caching
  ni-name                                = var.ni-name
  ni-ipconfig_private_address_allocation = var.ni-ipconfig_private_address_allocation
  sn-id                                  = module.network.subnet_id
  vm-source_image_reference_offer        = var.vm-source_image_reference_offer
  vm-source_image_reference_publisher    = var.vm-source_image_reference_publisher
  vm-os_disk_sat                         = var.vm-os_disk_sat
  vm-size                                = var.vm-size
  vm-name                                = var.vm-name
  vm-source_image_reference_version      = var.vm-source_image_reference_version
  vm-tags                                = var.vm-tags
  vm-identity                            = var.vm-identity
  vm-source_image_reference_sku          = var.vm-source_image_reference_sku
}


# ----- Outputs -----


output "vnet-id" {
  description = "VNET ID"
  value       = module.network.subnet_id
}

output "subnet_id" {
  description = "Subnet ID"
  value       = module.network.subnet-id
}

output "nsg-id" {
  description = "Network Security Group ID"
  value       = module.network.nsg-id
}

output "storage_account_id" {
  description = "Storage Account ID"
  value       = module.storage_account.sa-id
}

output "storage_account_primary_access_key" {
  description = "Storage Account Primary Access Key"
  value       = var.sa-primary_key
}

output "key_vault_id" {
  description = "Key Vault ID"
  value       = module.key_vault.kv-id
}

output "vm_id" {
  description = "VM ID"
  value       = module.virtual_machine.vm-id
}

output "vm_identity_object_id" {
  description = "Virtual Machine Identity Object ID"
  value       = module.virtual_machine.vm-object_id
}
