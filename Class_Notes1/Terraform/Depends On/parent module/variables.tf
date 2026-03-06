# variable "resource_group" {
#   description = "Resource group ka Variable" 
#   type = string
# }

# variable "storage_account" {
#   description = "SA ke variables"
#   type = string
# }

#########################################################

variable "resource_group" {
  description = "Resource group ka Variable"
  
  type = object({
    # rg_name  = string
    # location = string
  })
}

variable "storage_account" {
  description = "SA ke variables"

  type = object({
  #   sa_name                  = string
  #   resource_group_name      = string
  #   location                 = string
  #   account_tier             = string
  #   account_replication_type = string
  })
}