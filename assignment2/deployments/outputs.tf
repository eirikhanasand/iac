

# Exposes the VNet ID from the global module


output "vnet_id" {
  description = "VNet ID from the networking module"
  value       = module.global.vnet-id
}

output "subnet_id" {
  description = "Subnet ID from the networking module"
  value       = module.global.subnet_id
}

output "nsg_id" {
  description = "NSG ID from the networking module"
  value       = module.global.nsg-id
}

output "storage_account_id" {
  description = "Storage Account ID from the storage module"
  value       = module.global.storage_account_id
}

output "storage_account_primary_access_key" {
  description = "Primary access key for the storage account"
  value       = module.global.storage_account_primary_access_key
}
