

# Provisions an Azure Linux Virtual Machine.


resource "azurerm_network_interface" "eirik-ni" {
  name                = var.ni-name
  location            = var.location
  resource_group_name = var.rg-name

  ip_configuration {
    name                          = var.ni-ipconfig_name
    subnet_id                     = var.sn-id
    private_ip_address_allocation = var.ni-ipconfig_private_address_allocation
  }
}

resource "azurerm_linux_virtual_machine" "eirik-vm" {
  name                  = var.vm-name
  location              = var.location
  resource_group_name   = var.rg-name
  network_interface_ids = [azurerm_network_interface.eirik-ni.id]
  size                  = var.vm-size

  admin_username = var.admin_username

  os_disk {
    caching              = var.vm-os_disk_caching
    storage_account_type = var.vm-os_disk_sat
  }

  source_image_reference {
    publisher = var.vm-source_image_reference_publisher
    offer     = var.vm-source_image_reference_offer
    sku       = var.vm-source_image_reference_sku
    version   = var.vm-source_image_reference_version
  }

  identity {
    type = var.vm-identity
  }

  tags = {
    environment = var.vm-tags
  }

  disable_password_authentication = false
  admin_password                  = var.admin_password
}
