

# Network variables


variable "rg-name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Location for resources"
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
    description = "Subnet Group Name"
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
