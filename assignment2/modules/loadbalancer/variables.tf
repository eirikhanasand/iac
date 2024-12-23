

# Load balancer variables


variable "rg-name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Location for resources"
  type        = string
}

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
