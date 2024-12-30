variable "nat_ip_name" {
  type        = string
  description = "Name of the NAT gateway public IP"
}

variable "nat_gateway_name" {
  type        = string
  description = "Name of the NAT gateway"
}

variable "location" {
  type        = string
  description = "Location for the NAT gateway resources"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name for the NAT gateway"
}

variable "subnet_id" {
  type        = string
  description = "ID of the subnet to associate with the NAT gateway"
}
