module "aks" {
  source              = "./modules/aks"
  aks_name            = var.aks_name
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
  vm_size             = var.vm_size
  subnet_id           = module.network.aks_subent_id
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
}