resource "azurerm_public_ip" "publicip" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = "Static"
}

resource "azurerm_network_interface" "nic" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  ip_configuration {
    name                          = var.name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.publicip.id
  }
}

resource "azurerm_network_interface_security_group_association" "example" {
  network_interface_id      = azurerm_network_interface.nic.id
  network_security_group_id = var.network_security_group_id
}

resource "azurerm_virtual_machine" "vm" {
  name                  = var.name
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.nic.id]
  vm_size               = "Standard_F1s"


  storage_image_reference {
    id                = var.storage_image_reference
  }
  storage_os_disk {
    name              = var.name
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = var.name
    admin_username = "azuser"
    admin_password = "devops@12345"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_dns_a_record" "dns_record" {
  name                = "${ var.name }-dev"
  zone_name           = var.zone_name
  resource_group_name = var.resource_group_name
  ttl                 = 3
  records             = [azurerm_network_interface.nic.private_ip_address]
}