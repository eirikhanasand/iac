

# SQL database variables


variable "rg-name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Location for resources"
  type        = string
}

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
