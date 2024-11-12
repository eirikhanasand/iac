

# Load balancer.


resource "azurerm_resource_group" "eirik-rg" {
  name     = var.rg-name
  location = var.location
}

resource "azurerm_public_ip" "eirik-public_ip" {
  name                = var.lb-public_ip
  location            = var.location
  resource_group_name = var.rg-name
  allocation_method   = var.allocation_method
}

resource "azurerm_lb" "eirik-lb" {
  name                = var.lb-name
  location            = var.location
  resource_group_name = var.rg-name

  frontend_ip_configuration {
    name                 = var.lb-frontend_ip
    public_ip_address_id = azurerm_public_ip.eirik-public_ip.id
  }
}
