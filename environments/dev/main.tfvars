env                       = "dev"
zone_name                 = "nareshdevops1218.online"
subnet_id                 = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Network/virtualNetworks/myfirstvm-vnet/subnets/default"

storage_image_reference   = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Compute/images/local-devops-practice"

network_security_group_id = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/raghuproject_resources/providers/Microsoft.Network/networkSecurityGroups/allow-all-test"

subscription_id           = "1c8859e3-276f-40f1-afc9-1dd8f8dc18d7"

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
