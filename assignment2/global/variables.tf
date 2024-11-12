

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


# Storage Account variables


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


variable "sql-server_name" {
    description = "SQL Server Name"
    type        = string
}

variable "sql-version" {
    description = "SQL Version"
    type        = string
}

variable "sql-administrator_login" {
    description = "Administrator Login Username"
    type        = string
}

variable "sql-administrator_password" {
    description = "Administrator Login Password"
    type        = string
}

variable "sql-name" {
    description = "SQL Database Name"
    type        = string
}

variable "sql-license_type" {
    description = "SQL License Type"
    type        = string
}

variable "sql-sku_name" {
    description = "SKU Name"
    type        = string
}

variable "sql-enclave_type" {
    description = "VBS"
    type        = string
}

variable "sql-max_size_gb" {
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

variable "lb-public_ip" {
    description = "Load Balancer Public IP"
    type        = string
}

variable "lb-frontend_ip" {
    description = "Load Balancer Frontend Public IP"
    type        = string
}

variable "allocation_method" {
    description = "Load Balancer IP Allocation Method"
    type        = string
}
