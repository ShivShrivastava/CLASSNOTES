# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.rg.rg_name
  location = var.rg.rg_location
}