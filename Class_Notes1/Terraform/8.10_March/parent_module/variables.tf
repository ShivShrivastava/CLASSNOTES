variable "rg" {
  type = object({
    rg_name     = string
    rg_location = string
  })
}

variable "vnet" {
  type = object({
    vnet_name     = string
    address_space = list(string)
    rg_name       = string
    rg_location   = string
  })
}

variable "subnet" {
  description = "Subnet configuration"
  type = object({
    subnet_name      = string
    rg_name          = string
    vnet_name        = string
    address_prefixes = list(string)
  })
}

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

variable "nic" {
  type = object({
    nic_name    = string
    rg_name     = string
    rg_location = string

    ip_configuration = object({
      name                   = string
      private_ip_address_allocation = string
      private_ip_address            = string
      # public_ip_address_id = string
      # subnet_id = string
    })
  })
}

# variable "subnet_id" {}

# variable "public_ip" {}

variable "vm" {
  type = object({
    vm_name                         = string
    rg_name                         = string
    rg_location                     = string
    size                            = string
    admin_username                  = string
    admin_password                  = string
    disable_password_authentication = bool

    # network_interface_ids = list(string)

    os_disk = object({
      caching              = string
      storage_account_type = string
    })

    source_image_reference = object({
      publisher = string
      offer     = string
      sku       = string
      version   = string
    })
  })
}

# variable "nic_id" {}