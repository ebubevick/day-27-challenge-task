variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "virtual_network_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "subnets" {
  description = "List of subnets"
  type = map(object({
    name          = string
    address_prefix = string
  }))
}
