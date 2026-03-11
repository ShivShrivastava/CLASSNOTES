module "rg" {
  source = "../child module/rg"
  resource_group = var.resource_group
}