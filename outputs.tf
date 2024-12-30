output "resource_group" {
  value = module.resource_group.resource_group_name
}

output "vnet" {
  value = module.vnet.vnet_name
}

output "subnet" {
  value = module.subnet.subnet_name
}

output "nsg" {
  value = module.nsg.nsg_id
}

output "nat_gateway" {
  value = module.nat_gateway.nat_gateway_id
}

output "vm" {
  value = module.vm.vm_id
}
