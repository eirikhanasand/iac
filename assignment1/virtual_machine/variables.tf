

# VM sizes


variable "rg-name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Location for resources"
  type        = string
}

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

variable "sn-id" {
  description = "Subnet ID"
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

variable "admin_username" {
  description = "Admin Username"
  type        = string
}

variable "admin_password" {
  description = "Admin Password"
  type        = string
}

variable "vm-identity" {
  description = "Virtual Machine Identity"
  type        = string
}
