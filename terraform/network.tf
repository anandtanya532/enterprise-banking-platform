module "network" {

  source = "./modules/network"

  vnet_name = var.vnet_name

  location = module.resource_group.location

  resource_group_name = module.resource_group.resource_group_name

  address_space = var.address_space

  aks_subnet_name = var.aks_subnet_name

  aks_subnet_prefix = var.aks_subnet_prefix

  appgw_subnet_name = var.appgw_subnet_name

  appgw_subnet_prefix = var.appgw_subnet_prefix
}