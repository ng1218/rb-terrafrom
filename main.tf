module "resource_group" {
  for_each  = var.rg_name
  source    = "./modules/resource-group"
  location  = each.value["location"]
  rg_name   = "${each.key}-${var.env}"
}

/*module "applications" {
  depends_on                = [module.databases]
  for_each                  = var.applications
  source                    = "./modules/vm"
  location                  = module.resource_group[each.value["rgname"]].location
  name                      = module.resource_group[each.value["rgname"]].name
  resource_group_name       = module.resource_group.name
  network_security_group_id = var.network_security_group_id
  storage_image_reference   = var.storage_image_reference
  subnet_id                 = var.subnet_id
  zone_name                 = var.zone_name
}

module "databases" {
  for_each                  = var.databases
  source                    = "./modules/vm"
  location                  = module.resource_group[each.value["rgname"]].location
  name                      = module.resource_group[each.value["rgname"]].name
  resource_group_name       = module.resource_group.name
  network_security_group_id = var.network_security_group_id
  storage_image_reference   = var.storage_image_reference
  subnet_id                 = var.subnet_id
  zone_name                 = var.zone_name
}*/
output "test" {
  value = module.resource_group.name
}