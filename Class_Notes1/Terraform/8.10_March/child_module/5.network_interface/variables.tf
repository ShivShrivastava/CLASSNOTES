variable "nic" {
  type = object({
    nic_name    = string
    rg_name     = string
    rg_location = string

    ip_configuration = object({
      name                   = string
      private_ip_address_allocation = string
      private_ip_address            = string
      # subnet_id                    = string
    })
  })
}

variable "subnet_id" {} # Output Block Variable

variable "public_ip" {} # Output Block Variable