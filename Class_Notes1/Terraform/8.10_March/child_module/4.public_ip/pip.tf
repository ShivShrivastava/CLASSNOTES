# PIP
resource "azurerm_public_ip" "pip" {
  name                    = var.pip.pip_name
  location                = var.pip.rg_location
  resource_group_name     = var.pip.rg_name
  allocation_method       = var.pip.allocation_method
  idle_timeout_in_minutes = var.pip.idle_timeout_in_minutes
  sku                     = var.pip.sku
}