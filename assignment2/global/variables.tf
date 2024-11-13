

# ----- Root Variable Definitions -----


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

variable "vn-address-space" {
  description = "Virtual Network Address Space"
  type        = string
}

variable "ni-name" {
  description = "Network Interface Name"
  type        = string
}

variable "ni-ipconfig_private_address_allocation" {
  description = "Network Interface IP Config Private Address Allocation"
  type        = string
}

variable "ni-ipconfig_name" {
  description = "Network Interface IP Config Name"
  type        = string
}

variable "sn-name" {
  description = "Subnet Name"
  type        = string
}

variable "sn-address-prefixes" {
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


# Storage Account variables


variable "sa-name" {
  description = "Storage Account Name"
  type        = string
}

variable "sa-account_tier" {
  description = "Storage Account Tier"
  type        = string
}

variable "sa-tags" {
  description = "Storage Account Tags"
  type        = string
}

variable "sa-account_replication_type" {
  description = "Storage Account Replication Type"
  type        = string
}

variable "sa-primary_key" {
  description = "Storage Account Primary key"
  type        = string
}

variable "sc-name" {
  description = "Storage Container Name"
  type        = string
}

variable "sc-container_access_type" {
  description = "Storage Container Access Type"
  type        = string
}


# App service variables


variable "sp-name" {
  description = "Service Plan Name"
  type        = string
}

variable "sp-os" {
  description = "Service Plan OS"
  type        = string
}

variable "sp-sku" {
  description = "Service Plan Sku"
  type        = string
}


# Database variables


variable "sql-server-name" {
  description = "SQL Server Name"
  type        = string
}

variable "sql-version" {
  description = "SQL Version"
  type        = string
}

variable "sql-administrator-login" {
  description = "Administrator Login Username"
  type        = string
}

variable "sql-administrator-password" {
  description = "Administrator Login Password"
  type        = string
}

variable "sql-name" {
  description = "SQL Database Name"
  type        = string
}

variable "sql-license-type" {
  description = "SQL License Type"
  type        = string
}

variable "sql-sku-name" {
  description = "SKU Name"
  type        = string
}

variable "sql-enclave-type" {
  description = "VBS"
  type        = string
}

variable "sql-max-size-gb" {
  description = "SQL Max Size in GB"
  type        = string
}

variable "sql-collation" {
  description = "SQL Collation Type"
  type        = string
}


# Load balancer variables


variable "lb-name" {
  description = "Load Balancer Name"
  type        = string
}

variable "lb-public-ip" {
  description = "Load Balancer Public IP"
  type        = string
}

variable "lb-frontend-ip" {
  description = "Load Balancer Frontend Public IP"
  type        = string
}

variable "allocation-method" {
  description = "Load Balancer IP Allocation Method"
  type        = string
}
