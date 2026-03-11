variable "vnet" {
  type = object({
    vnet_name     = string
    address_space = list(string)
    rg_name       = string
    rg_location   = string
  })
}
