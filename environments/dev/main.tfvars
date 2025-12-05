env                       = "dev"
zone_name                 = "nareshdevops1218.online"
subnet_id                 = "/subscriptions/ddffee8a-e239-4aa1-b7e0-b88ff5a2f9aa/resourceGroups/ngresources/providers/Microsoft.Network/virtualNetworks/vnet-ukwest/subnets/snet-ukwest-1"

storage_image_reference   = "/subscriptions/ddffee8a-e239-4aa1-b7e0-b88ff5a2f9aa/resourceGroups/ngresources/providers/Microsoft.Compute/images/local-devops-practice"

network_security_group_id = "/subscriptions/ddffee8a-e239-4aa1-b7e0-b88ff5a2f9aa/resourceGroups/ngresources/providers/Microsoft.Network/networkSecurityGroups/test-allow-all"

subscription_id           = "ddffee8a-e239-4aa1-b7e0-b88ff5a2f9aa"
dns_resource_group_name   = "ngresources"
applications = {
    frontend  = {
      rgname = "ukwest"
    }
    catalogue = {
      rgname = "ukwest"
    }
    user      = {
      rgname = "ukwest"
    }
    cart      = {
      rgname = "ukwest"
    }
    shipping  = {
      rgname = "ukwest"
    }
    payment   = {
      rgname = "ukwest"
    }
  }

databases = {
    mongodb = {
      rgname = "ukwest"
    }
    mysql = {
      rgname = "ukwest"
    }
    redis = {
      rgname = "ukwest"
    }
    rabbitmq = {
      rgname = "ukwest"
    }
  }

rg_name = {
    ukwest = {
      location = "UK West"
    }
  }

aks = {
  aks-main-dev = {

  }
}
