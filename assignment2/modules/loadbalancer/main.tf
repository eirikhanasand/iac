

# Load balancer.


resource "azurerm_public_ip" "eirik-public-ip" {
  name                = var.lb-public-ip
  location            = var.location
  resource_group_name = var.rg-name
  allocation_method   = var.allocation-method
}

resource "azurerm_lb" "eirik-lb" {
  name                = var.lb-name
  location            = var.location
  resource_group_name = var.rg-name

  frontend_ip_configuration {
    name                 = var.lb-frontend-ip
    public_ip_address_id = azurerm_public_ip.eirik-public-ip.id
  }
}
