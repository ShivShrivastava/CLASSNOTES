# NIC
resource "azurerm_network_interface" "nic" {
  name                = var.nic.nic_name               
  location            = var.nic.rg_location
  resource_group_name = var.nic.rg_name

  ip_configuration {
    name                          = var.nic.ip_configuration.name
    private_ip_address_allocation = var.nic.ip_configuration.private_ip_address_allocation
    private_ip_address            = var.nic.ip_configuration.private_ip_address
    subnet_id                     = var.subnet_id
    public_ip_address_id          = var.public_ip
  }
}

output "nic_id" {
  value = azurerm_network_interface.nic.id
}