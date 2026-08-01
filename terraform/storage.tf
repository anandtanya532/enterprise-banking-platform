module "storage"{
    source = "./modules/storage"
    storage_account_name = var.storage_account_name
    location = module.resource_group.location
    resource_group_name = module.resource_group.resource_group_name
    container_name = var.container_name

}