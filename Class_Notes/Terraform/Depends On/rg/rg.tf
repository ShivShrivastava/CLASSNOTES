# Resource Group ka Block
variable "resource_group1" {
  description = "Resource group ka Variable" 
  type = string
}

variable "resource_group2" {
  description = "Resource group ka Variable" 
  type = string
}
# Bhai, nahi – description sirf Terraform ke liye documentation hai, ye tfstate file me store nahi hoti.
# Bhai, reason simple hai: Terraform ka tfstate sirf “actual infrastructure state” track karta hai, documentation ke liye likhe gaye description ki koi zarurat runtime me nahi padti.

resource "azurerm_resource_group" "rg1" {
  name     = var.resource_group1.rg1_name
  location = var.resource_group1
}

resource "azurerm_resource_group" "rg2" {
  name     = var.resource_group2.rg2_name
  location = var.resource_group2
}