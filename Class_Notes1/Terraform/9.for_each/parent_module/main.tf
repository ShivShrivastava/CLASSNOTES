module "resource_group" {
  source = "../child_module/1.resource_group"
  rg     = var.rg
}