resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.name
  location            = var.rg_name
  resource_group_name = var.location
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}
