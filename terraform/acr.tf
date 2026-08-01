module "acr" {

  source = "./modules/acr"

  acr_name = var.acr_name

  resource_group_name = module.resource_group.resource_group_name

  location = module.resource_group.location

  sku = var.acr_sku

  admin_enabled = var.admin_enabled

}