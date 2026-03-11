module "resource_group" {
  source = "../child_module/1.resource_group"
  rg     = var.rg
}

module "virtual_network" {
  source = "../child_module/2.virtual_network"
  vnet   = var.vnet

  depends_on = [module.resource_group]   # VNet RG ke baad create ho
}

module "subnet" {
  source = "../child_module/3.subnet"
  subnet = var.subnet

  depends_on = [module.virtual_network]  # Subnet VNet ke baad create ho
}

module "public_ip" {
  source = "../child_module/4.public_ip"
  pip    = var.pip

  depends_on = [module.resource_group]   # PIP RG ke baad create ho
}

module "network_interface" {
  source     = "../child_module/5.network_interface"
  nic        = var.nic
  subnet_id  = module.subnet.subnet_id
  public_ip  = module.public_ip.public_ip

  depends_on = [
    module.subnet, 
    module.public_ip
  ]   # NIC PIP aur Subnet ke baad create ho
}

module "virtual_machine" {
  source = "../child_module/6.virtual_machine"
  vm     = var.vm
  nic_id = module.network_interface.nic_id

  depends_on = [module.network_interface]   # VM NIC ke baad create ho
}