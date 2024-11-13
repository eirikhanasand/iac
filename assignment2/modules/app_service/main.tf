

# App Service.


provider "azurerm" {
  features {}
}

resource "azurerm_service_plan" "eirik-sp" {
  name                = var.sp-name
  resource_group_name = var.rg-name
  location            = var.location
  os_type             = var.sp-os
  sku_name            = var.sp-sku
}
