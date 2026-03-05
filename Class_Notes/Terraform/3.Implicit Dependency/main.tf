# Resource Group ka Block
resource "azurerm_resource_group" "rg" { # Resource Address
  name     = "example-resources"
  location = "West Europe"
}

# Storage Account ka Block
resource "azurerm_storage_account" "sa" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.rg.name         # Implicit/Internal Dependency
  location                 = azurerm_resource_group.rg.location     # "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# Resource Group ka Block
resource "azurerm_resource_group" "rg" { # Resource Address
  name     = "example-resources"
  location = "West Europe"
}

# Storage Account ka Block
resource "azurerm_storage_account" "sa" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.rg.name         # Implicit/Internal Dependency
  location                 = "eastus"                               # Region-Independent Resources # Datacenter
  account_tier             = "Standard"
  account_replication_type = "GRS"
}