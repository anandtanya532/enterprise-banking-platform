subscription_id = "20f3617d-34b3-42b5-8a4a-bb7db96fd68c"

resource_group_name = "rg-enterprise-bank-prod"

location = "Central India"

vnet_name = "vnet-enterprise-bank"

address_space = [
  "10.100.0.0/16"
]

aks_subnet_prefix = [
  "10.100.1.0/24"
]

appgw_subnet_prefix = [
  "10.100.2.0/24"
]

acr_name = "acrentbank001"

acr_sku = "Basic"

admin_enabled = false

aks_name = "aks-enterprise-bank"

dns_prefix = "enterprise-bank"

node_count = 1

vm_size = "Standard_B2as_v2"

keyvault_name = "kv-enterprise-bank"

tenant_id = "d8793716-3f3b-4541-b869-be220ce27e5b"

storage_account_name = "sttanyaanand001"

container_name = "terraform-state"