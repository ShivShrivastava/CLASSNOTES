# VM
resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.vm.vm_name
  resource_group_name = var.vm.rg_name
  location            = var.vm.rg_location
  size                = var.vm.size
  admin_username      = var.vm.admin_username
  admin_password      = var.vm.admin_password

  network_interface_ids = [var.nic_id]

  disable_password_authentication = var.vm.disable_password_authentication

  os_disk {
    caching              = var.vm.os_disk.caching
    storage_account_type = var.vm.os_disk.storage_account_type
  }

  source_image_reference {
    publisher = var.vm.source_image_reference.publisher
    offer     = var.vm.source_image_reference.offer
    sku       = var.vm.source_image_reference.sku
    version   = var.vm.source_image_reference.version
  }
}