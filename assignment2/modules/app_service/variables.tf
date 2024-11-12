

# App service variables


variable "rg-name" {
    description = "Name of the Resource Group"
    type        = string
}

variable "location" {
    description = "Location for resources"
    type        = string
}

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
