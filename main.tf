provider "azurerm" {
  features {}
  subscription_id = "1c8859e3-276f-40f1-afc9-1dd8f8dc18d7"
}

module "applications" {
  count                     = length(var.name)
  source                    = "./applications"
  location                  = var.location
  name                      = var.name[count.index]
  resource_group_name       = var.resource_group_name
  network_security_group_id = var.network_security_group_id
  storage_image_reference   = var.storage_image_reference
  subnet_id                 = var.subnet_id
  zone_name                 = var.zone_name
}