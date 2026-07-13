resource "azurerm_virtual_network" "main" {
 name = var.vnet_name
 location = azurerm_resource_group.main.location
 resource_group_name = azurerm_resource_group.main.name

 address_space = var.address_space
}

resource "azurerm_subnet" "aks" {
    name = "snet-aks"
  resource_group_name = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name

  address_prefixes = var.aks_subnet_prefix
}

resource "azurerm_subnet" "appgw" {
    name = "snet-appgw"
  resource_group_name = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name

  address_prefixes = var.appgw_subnet_prefix

}