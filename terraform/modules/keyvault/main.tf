resource "azurerm_key_vault" "this"{
  name = var.keyvault_name
  resource_group_name = var.resource_group_name
  location = var.location
  tenant_id = var.tenant_id

  sku_name = "standard"

  purge_protection_enabled = false
  soft_delete_retention_days = 7
}