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