

# ----- Root Variable Definitions -----


# Key Vault Variables


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


# Network variables


variable "rg-name" {
    description = "Resource Group Name"
    type        = string
}

variable "location" {
    description = "Resource Group Location"
    type        = string
}

variable "vn-name" {
    description = "Virtual Network Name"
    type        = string
}

variable "vn-address_space" {
    description = "Virtual Network Address Space"
    type        = string
}

variable "sn-name" {
    description = "Subnet Name"
    type        = string
}

variable "sn-address_prefixes" {
    description = "Subnet Address Prefixes"
    type        = string
}

variable "nsg-name" {
    description = "Network Security Group Name"
    type        = string
}

variable "rule-ssh" {
    description = "Allow SSH Network Security Group Rule"
    type = list(object({
        name                       = string
        priority                   = number
        direction                  = string
        access                     = string
        protocol                   = string
        source_port_range          = string
        destination_port_range     = string
        source_address_prefix      = string
        destination_address_prefix = string
    }))
   
}


# Storage Account types


variable "sa-name" {
    description = "Storage Account Name"
    type        = string
}

variable "sa-account_tier" {
    description = "Storage Account Tier"
    type        = string
}

variable sa-tags {
    description = "Storage Account Tags"
    type        = string
}

variable sa-account_replication_type {
    description = "Storage Account Replication Type"
    type        = string
}

variable sa-primary_key {
    description = "Storage Account Primary key"
    type        = string
}

variable "sc-name" {
    description = "Storage Container Name"
    type        = string
}

variable sc-container_access_type {
    description = "Storage Container Access Type"
    type        = string
}


# VM sizes


variable "ni-name" {
    description = "Network Interface Name"
    type        = string
}

variable "ni-ipconfig_name" {
    description = "Network Interface IP Configuration Name"
    type        = string
} 

variable "ni-ipconfig_private_address_allocation" {
    description = "Network Interface IP Configuration Private Address Allocation"
    type        = string
}

variable "vm-name" {
    description = "Virtual Machine Name"
    type        = string
}

variable "vm-size" {
    description = "Virtual Machine Size"
    type        = string
}

variable "vm-os_disk_caching" {
    description = "Virtual Machine OS Disk Caching Permissions"
    type        = string
}

variable "vm-os_disk_sat" {
    description = "Virtual Machine OS Disk Storage Account Type"
    type        = string
}

variable "vm-source_image_reference_publisher" {
    description = "Virtual Machine Source Image Reference Publisher"
    type        = string
}

variable "vm-source_image_reference_offer" {
    description = "Virtual Machine Server Type"
    type        = string
}

variable "vm-source_image_reference_sku" {
    description = "Virtual Machine OS Release"
    type        = string
}

variable "vm-source_image_reference_version" {
    description = "Virtual Machine Release Version"
    type        = string
}

variable "vm-tags" {
    description = "Virtual Machine Tags"
    type        = string
}

variable "vm-identity" {
    description = "Virtual Machine Identity"
    type        = string
}
