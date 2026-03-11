# Resource Group
rg = {
  rg_name     = "test-resources"
  rg_location = "Central India"
}

# Vnet
vnet = {
  vnet_name     = "test-network"
  address_space = ["10.0.0.0/16"]
  rg_name       = "test-resources"
  rg_location   = "Central India"
}

# Subnet
subnet = {
  subnet_name      = "acctsub"
  rg_name          = "test-resources"
  vnet_name        = "test-network"
  address_prefixes = ["10.0.1.0/24"]
}

# PIP
pip = {
  pip_name                = "test-pip"
  rg_location             = "Central India"
  rg_name                 = "test-resources"
  allocation_method       = "Static"
  idle_timeout_in_minutes = 4
  sku                     = "Standard"
}

# NIC
nic = {
  nic_name    = "test-nic"
  rg_name     = "test-rg"
  rg_location = "Central India"

  ip_configuration = {
    name                   = "testconfiguration1"
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.0.2.5"
    # public_ip_address_id          = ""
    # subnet_id                     = "<SUBNET_ID>"
  }
}

# VM
vm = {
  vm_name                         = "example-machine"
  rg_name                         = "test-rg"
  rg_location                     = "Central India"
  size                            = "Standard_B2ats_v2"
  admin_username                  = "adminuser"
  admin_password                  = "useradmin@123"
  disable_password_authentication = false

  # network_interface_ids = [
  #   azurerm_network_interface.nic.id
  # ]

  os_disk = {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference = {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
