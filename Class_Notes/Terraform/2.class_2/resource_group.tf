# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group.rg_name
  location = var.resource_group.rg_location

  lifecycle {
    prevent_destroy = true
    create_before_destroy = true
    ignore_changes = true
    replace_triggered_by = true
  }
}

| Attribute               | Purpose                                         |
| ----------------------- | ----------------------------------------------- |
| `create_before_destroy` | New resource pehle create kare                  |
| `prevent_destroy`       | Resource delete hone se bachata hai             |
| `ignore_changes`        | Specific attributes ke changes ignore karta hai |
| `replace_triggered_by`  | Dusre resource change par recreate              |

first
second 




