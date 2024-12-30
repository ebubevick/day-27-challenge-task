variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
  default     = "example-rg"
}

variable "location" {
  type        = string
  description = "Azure region to deploy resources"
  default     = "East US"
}

variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
  default     = "example-vnet"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for the virtual network"
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
  default     = "example-subnet"
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "Address prefixes for the subnet"
  default     = ["10.0.1.0/24"]
}

variable "nsg_name" {
  type        = string
  description = "Name of the network security group"
  default     = "example-nsg"
}

variable "nat_ip_name" {
  type        = string
  description = "Name of the NAT gateway public IP"
  default     = "example-nat-ip"
}

variable "nat_gateway_name" {
  type        = string
  description = "Name of the NAT gateway"
  default     = "example-nat-gateway"
}

variable "vm_name" {
  type        = string
  description = "Name of the virtual machine"
  default     = "example-vm"
}

variable "nic_name" {
  type        = string
  description = "Name of the network interface for the VM"
  default     = "example-nic"
}

variable "vm_size" {
  type        = string
  description = "Size of the VM"
  default     = "Standard_B1s"
}

variable "admin_username" {
  type        = string
  description = "Admin username for the VM"
  default     = "adminuser"
}

variable "admin_password" {
  type        = string
  description = "Admin password for the VM"
  default     = "P@ssword1234!"
}

variable "custom_data" {
  type        = string
  description = "Custom data (cloud-init script) for the VM"
  default     = ""
}
