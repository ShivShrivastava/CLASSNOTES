# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.rg.rg_name
  location = var.rg.rg_location
}

resource "azurerm_resource_group" "rg1" {
  name     = var.rg1.rg_name1
  location = var.rg1.rg_location1
}

# 200 Block = 50 RGs
# for_each