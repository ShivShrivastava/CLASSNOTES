variable "storage_account" {
  description = "Storage Account configuration"

  type = object({
    sa_name                  = string
     resource_group_name = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  })
}
