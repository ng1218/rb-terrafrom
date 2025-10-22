provider "azurerm" {
  features {}
  subscription_id = "1c8859e3-276f-40f1-afc9-1dd8f8dc18d7"
}

resource "azurerm_network_interface" "frontend" {
  name                = "frontend"
  location            = "UK West"
  resource_group_name = "myfirstvm_group"

  ip_configuration {
    name                          = "frontend"
    subnet_id                     = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Network/virtualNetworks/myfirstvm-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_public_ip" "frontend" {
  name                = "frontend"
  resource_group_name = "myfirstvm_group"
  location            = "UK West"
  allocation_method   = "Static"
}

resource "azurerm_virtual_machine" "frontend" {
  name                  = "frontend"
  location              = "UK West"
  resource_group_name   = "myfirstvm_group"
  network_interface_ids = [azurerm_network_interface.frontend.id]
  vm_size               = "Standard_F1s"


  storage_image_reference {
    id                = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "frontend"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "frontend"
    admin_username = "azuser"
    admin_password = "devops@12345"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}