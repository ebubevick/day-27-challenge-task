# Resource Group
module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

# Virtual Network
module "vnet" {
  source              = "./modules/vnet"
  vnet_name           = var.vnet_name
  address_space       = var.vnet_address_space
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
}

# Subnet
module "subnet" {
  source              = "./modules/subnet"
  subnet_name         = var.subnet_name
  address_prefixes    = var.subnet_address_prefixes
  vnet_name           = module.vnet.vnet_name
  resource_group_name = module.resource_group.resource_group_name
}

# Network Security Group
module "nsg" {
  source              = "./modules/nsg"
  nsg_name            = var.nsg_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
}

# NAT Gateway
module "nat_gateway" {
  source              = "./modules/nat_gateway"
  nat_ip_name         = var.nat_ip_name
  nat_gateway_name    = var.nat_gateway_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  subnet_id           = module.subnet.subnet_id
}

# Virtual Machine
module "vm" {
  source              = "./modules/vm"
  vm_name             = var.vm_name
  nic_name            = var.nic_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  subnet_id           = module.subnet.subnet_id
  public_ip_id        = module.nat_gateway.nat_gateway_id
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  custom_data         = var.custom_data
}
