module "keyvault"{
    source = "./modules/keyvault"
    keyvault_name = var.keyvault_name
    location = module.resource_group.location
    resource_group_name = module.resource_group.resource_group_name
    tenant_id = var.tenant_id
}