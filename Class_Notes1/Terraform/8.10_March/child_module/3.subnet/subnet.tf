# Subnet 
resource "azurerm_subnet" "subnet" {
  name                 = var.subnet.subnet_name
  resource_group_name  = var.subnet.rg_name
  virtual_network_name = var.subnet.vnet_name
  address_prefixes     = var.subnet.address_prefixes
}

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}