output "vnet_id"{
    value = azurerm_virtual_network.this.id

}
output "vnet_name"{
    value = azurerm_virtual_network.this.name
}

output "aks_subent_id"{
    value = azurerm_subnet.aks.id
}
output "appgw_subnet_id"{
    value = azurerm_subnet.appgw.id
}
