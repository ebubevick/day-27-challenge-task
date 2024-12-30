variable "nic_name" {
  type        = string
  description = "Name of the network interface"
}

variable "vm_name" {
  type        = string
  description = "Name of the virtual machine"
}

variable "location" {
  type        = string
  description = "Location of the VM"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name for the VM"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID for the NIC"
}

variable "public_ip_id" {
  type        = string
  description = "Public IP ID for the NIC"
}

variable "vm_size" {
  type        = string
  description = "Size of the VM"
}

variable "admin_username" {
  type        = string
  description = "Admin username for the VM"
}

variable "admin_password" {
  type        = string
  description = "Admin password for the VM"
}

variable "custom_data" {
  type        = string
  description = "Custom data for cloud-init"
}
