variable "resource_group" {
  type = object({
    rg_name     = string
    rg_location = string
  })
}