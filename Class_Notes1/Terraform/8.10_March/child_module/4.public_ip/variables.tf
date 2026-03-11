variable "pip" {
  type = object({
    pip_name                = string
    allocation_method       = string
    idle_timeout_in_minutes = number
    sku                     = string
    rg_name                 = string
    rg_location             = string
  })
}