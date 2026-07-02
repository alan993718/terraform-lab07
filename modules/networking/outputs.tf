output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "frontend_subnet_id" {
  value = azurerm_subnet.subnet.id  # <-- Make sure this matches your resource name inside networking/main.tf
}
