variable "rg" {
  type = object({
    rg_name     = string
    rg_location = string
  })
}

variable "rg1" {
  type = object({
    rg_name1     = string
    rg_location1 = string
  })
}