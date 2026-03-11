terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.63.0" # 4.63.0
    }
  }
}

provider "azurerm" {
  subscription_id = "27e19bc2-9b10-488c-bf8a-1ec42c6468b4"
  features {}
}
