# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "test-resources"
  location = "Central India"
}


# Vnet
resource "azurerm_virtual_network" "vnet" {
  name                = "test-network"
  address_space       = ["10.0.0.0/16"]                    # 2^32-16 = 2^16 = 65,536
  location            = azurerm_resource_group.rg.location # Implicit Dependency
  resource_group_name = azurerm_resource_group.rg.name     # Implicit Dependency
}

# Subnet 
resource "azurerm_subnet" "subnet" { #-----------Resource_ID
  name                 = "acctsub"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"] # 2^32-24 = 2^8 = 256
}

# PIP
resource "azurerm_public_ip" "pip" {
  name                    = "test-pip"
  location                = azurerm_resource_group.rg.location
  resource_group_name     = azurerm_resource_group.rg.name
  allocation_method       = "Static"
  idle_timeout_in_minutes = 30
  sku = "Standard"
}


# NIC
resource "azurerm_network_interface" "nic" {
  name                = "test-nic"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.0.2.5"
    public_ip_address_id          = azurerm_public_ip.pip.id
  }
}

# VM
resource "azurerm_linux_virtual_machine" "example" {
  name                = "example-machine"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_B2ats_v2"
  admin_username      = "adminuser"
  admin_password      = "useradmin@123"
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  disable_password_authentication = false
  #   admin_ssh_key {
  #     username   = "adminuser"
  #     public_key = file("~/.ssh/id_rsa.pub")
  #   }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}