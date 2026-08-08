rgs = {
  rg1 = {
    name     = "pmd-cicd-rg1"
    location = "East US"
    create   = true
  }
  rg2 = {
    name     = "pmd-cicd-rg2"
    location = "West US"
    create   = true
  }
  rg3 = {
    name     = "pmd-cicd-rg3"
    location = "West US"
    create   = false
  }
}

vnet = {
  vnet1 = {
    name                = "pmd-vnet-1"
    resource_group_name = "pmd-cicd-rg1"
    address_space       = ["10.1.0.0/16"]
    create              = true
  }
  vnet2 = {
    name                = "pmd-vnet-2"
    resource_group_name = "pmd-cicd-rg2"
    address_space       = ["10.2.0.0/16"]
    create              = true
  }
  vnet3 = {
    name                = "pmd-vnet-3"
    resource_group_name = "pmd-cicd-rg3"
    address_space       = ["10.3.0.0/16"]
    create              = false
  }
}
