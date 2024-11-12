terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "fd-rg" {
  name     = "rg-demo-we"
  location = "West Europe"
}

resource "azurerm_storage_account" "sa-demo" {
  name                     = "eirikdemo12345"
  resource_group_name      = azurerm_resource_group.fd-rg.name
  location                 = azurerm_resource_group.fd-rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
