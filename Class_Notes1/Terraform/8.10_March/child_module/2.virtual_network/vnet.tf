# Vnet
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet.vnet_name
  address_space       = var.vnet.address_space
  location            = var.vnet.rg_location
  resource_group_name = var.vnet.rg_name
}