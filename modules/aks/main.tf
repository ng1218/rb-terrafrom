resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = "roboshopdns"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2ls_v5"
  }

  identity {
    type = "SystemAssigned"
  }

  aci_connector_linux {
    subnet_name = "/subscriptions/ddffee8a-e239-4aa1-b7e0-b88ff5a2f9aa/resourceGroups/ngresources/providers/Microsoft.Network/virtualNetworks/vnet-ukwest/subnets/snet-ukwest-1"
  }
}
