

# Storage Account types


variable "rg-name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Location for resources"
  type        = string
}

variable "sa-name" {
    description = "Storage Account Name"
    type = string
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

variable "sc-name" {
    description = "Storage Container Name"
    type        = string
}

variable sc-container_access_type {
    description = "Storage Container Access Type"
    type        = string
}

variable "nsg-id" {
    description = "Network Security Group ID"
    type        = string
    nullable    = true
}

variable "resource_group_id" {
    description = "Resource Group ID"
    type        = string
}
