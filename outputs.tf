output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.lab_rg.name
}

output "vnet_name" {
  description = "Name of the virtual network"
  value       = azurerm_virtual_network.lab_vnet.name
}

output "subnet_name" {
  description = "Name of the subnet"
  value       = azurerm_subnet.lab_subnet.name
}