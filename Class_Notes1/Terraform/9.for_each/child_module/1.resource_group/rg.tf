# Resource Group
resource "azurerm_resource_group" "rg" {
  for_each = var.rg
  name     = each.value.rg_name
  location = each.value.rg_location
}







# Normal 3 RGs = 12 Block
# for_each 3 RGs  = 6 Block

# Pipeline - Azure DevOps + Git