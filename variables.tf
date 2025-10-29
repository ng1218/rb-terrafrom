variable "applications" {
  default = {
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
}

variable "databases" {
  default = {
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
}

variable "zone_name" {
  default = "nareshdevops1218.online"
}

variable "subnet_id" {
  default = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Network/virtualNetworks/myfirstvm-vnet/subnets/default"
}

variable "storage_image_reference" {
  default = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Compute/images/local-devops-practice"
}

variable "network_security_group_id" {
  default = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/raghuproject_resources/providers/Microsoft.Network/networkSecurityGroups/allow-all-test"
}

variable "subscription_id" {
  default = "1c8859e3-276f-40f1-afc9-1dd8f8dc18d7"
}

variable "rg_name" {
  default = {
    ukwest = {
      location = "UK West"
    }
  }
}
variable "location" {}
variable "env" {}
