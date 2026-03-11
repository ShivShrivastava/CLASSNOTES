variable "subnet" {
  description = "Subnet configuration"
  type = object({
    subnet_name      = string
    rg_name          = string
    vnet_name        = string
    address_prefixes = list(string)
  })
}
