variable "name" {
  description = "Name of the virtual network"
  type        = string
}

variable "address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
}

variable "location" {
  description = "Location of the virtual network"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group where the virtual network is created"
  type        = string
}
