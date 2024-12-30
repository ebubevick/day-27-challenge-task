variable "nsg_name" {
  type        = string
  description = "Name of the network security group"
}

variable "location" {
  type        = string
  description = "Location of the NSG"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name for the NSG"
}
