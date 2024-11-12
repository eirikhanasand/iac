

# App Service.


provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "eirik-rg" {
  name     = var.rg-name
  location = var.location
}

resource "azurerm_service_plan" "eirik-sp" {
  name                = var.sp-name
  resource_group_name = azurerm_resource_group.eirik-rg.name
  location            = azurerm_resource_group.eirik-rg.location
  os_type             = var.sp-os
  sku_name            = var.sp-sku
}
