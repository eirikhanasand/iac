

# Key Vault Variables


variable "rg-name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Location for resources"
  type        = string
}

variable "kv-name" {
    description = "Key Vault Name"
    type        = string
}

variable "kv-sku" {
    description = "Key Vault SKU"
    type = string
}

variable kv-secret_permissions {
    description = "Key Vault Secret Permissions"
    type        = list(string)
}

variable kv-sak {
    description = "Virtual Machine Storage Account Key"
    type        = string
}

variable kv-vm_username_name {
    description = "Key Vault Virtual Machine Name"
    type        = string
}

variable kv-vm_password_name {
    description = "Key Vault Virtual Machine Password"
    type        = string
}

variable "vm-admin_username" {
    description = "Virtual Machine Admin User Name"
    type        = string
}

variable "vm-admin_password" {
    description = "Virtual Machine Admin User Password"
    type        = string
}

variable "vm-object_id" {
    description = "Virtual Machine Object ID"
    type        = string
}

variable "sa-primary_key" {
    description = "Storage Account Primary Access Key"
    type        = string
}
