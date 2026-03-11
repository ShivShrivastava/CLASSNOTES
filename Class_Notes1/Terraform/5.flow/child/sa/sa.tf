resource "azurerm_storage_account" "example" {
  name                     = var.storage_account.sa_name
  resource_group_name      = var.storage_account.resource_group_name
  location                 = var.storage_account.location
  account_tier             = var.storage_account.account_tier
  account_replication_type = var.storage_account.account_replication_type
}