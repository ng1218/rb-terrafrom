/*module "applications" {
  depends_on                = [module.databases]
  for_each                  = var.applications
  source                    = ".."
  location                  = var.location
  name                      = each.key
  resource_group_name       = var.resource_group_name
  network_security_group_id = var.network_security_group_id
  storage_image_reference   = var.storage_image_reference
  subnet_id                 = var.subnet_id
  zone_name                 = var.zone_name
}

module "databases" {
  for_each                  = var.databases
  source                    = ".."
  location                  = var.location
  name                      = each.key
  resource_group_name       = var.resource_group_name
  network_security_group_id = var.network_security_group_id
  storage_image_reference   = var.storage_image_reference
  subnet_id                 = var.subnet_id
  zone_name                 = var.zone_name
}*/

resource "azurerm_resource_group" "create_resource_group" {
  location    = var.location
  name        = var.rg_name
}