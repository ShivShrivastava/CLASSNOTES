module "resource_group" {
  source = "../child/rg"
  resource_group = var.resource_group
}

module "storage_account" {
  depends_on = [module.resource_group]
  source = "../child/sa"
  storage_account = var.storage_account
}