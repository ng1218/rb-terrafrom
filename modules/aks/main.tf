resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = "roboshopdns"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard D2ls v5"
  }

  identity {
    type = "SystemAssigned"
  }
}
