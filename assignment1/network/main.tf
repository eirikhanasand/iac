

# Provisions VNET, Subnet, and Network Security Group.


provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "eirik-rg" {
    name     = var.rg-name
    location = var.location
}

resource "azurerm_virtual_network" "eirik-vnet" {
    name          = var.vn-name
    address_space = [var.vn-address_space]
    location      = azurerm_resource_group.eirik-rg.location
    resource_group_name = azurerm_resource_group.eirik-rg.name
}

resource "azurerm_subnet" "eirik-sn" {
    name                 = var.sn-name
    resource_group_name  = azurerm_resource_group.eirik-rg.name
    virtual_network_name = azurerm_virtual_network.eirik-vnet.name
    address_prefixes     = [var.sn-address_prefixes] 
}

resource "azurerm_network_security_group" "eirik-nsg" {
    name                = var.nsg-name
    location            = azurerm_resource_group.eirik-rg.location
    resource_group_name = azurerm_resource_group.eirik-rg.name

    dynamic "security_rule" {
        for_each = var.rule-ssh
        content {
            access                     = security_rule.value.access
            destination_address_prefix = security_rule.value.destination_address_prefix
            destination_port_range     = security_rule.value.destination_port_range
            direction                  = security_rule.value.direction
            name                       = security_rule.value.name
            priority                   = security_rule.value.priority
            protocol                   = security_rule.value.protocol
            source_address_prefix      = security_rule.value.source_address_prefix
            source_port_range          = security_rule.value.source_port_range
        }
    }
}

resource "azurerm_subnet_network_security_group_association" "eirik-snsga" {
    subnet_id = azurerm_subnet.eirik-sn.id
    network_security_group_id = azurerm_network_security_group.eirik-nsg.id
}
