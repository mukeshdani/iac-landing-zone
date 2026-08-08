module "resource_group" {
  source = "../child/azurerm_resource_group"
  rgs    = { for k, v in var.rgs : k => v if v.create }
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../child/azurerm_virtual_network"
  vnet_name  = { for k, v in var.vnet : k => v if v.create }
}
