variable "vm" { # Global Variable
  type = object({
    vm_name                         = string
    rg_name                         = string
    rg_location                     = string
    size                            = string
    admin_username                  = string
    admin_password                  = string
    disable_password_authentication = bool

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

variable "nic_id" {} # Outputt Variable