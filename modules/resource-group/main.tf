resource "azurerm_resource_group" "create_resource_group" {
  location    = var.location
  name        = var.rg_name
}