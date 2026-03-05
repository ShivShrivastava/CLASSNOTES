# Storage Account ka Block
resource "azurerm_storage_account" "sa" {
  depends_on = [azurerm_resource_group]
  name                     = "devopsstorage9981"
  resource_group_name      =  
  location                 = "West Europe"                           
  account_tier             = "Standard"
  account_replication_type = "GRS"
}