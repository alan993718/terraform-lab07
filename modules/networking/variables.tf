variable "resource_group_name" {
  type        = string
  description = "The name of the resource group passed from the root module."
}

variable "location" {
  type        = string
  description = "The Azure region passed from the root module."
}

variable "vnet_name" {
  type        = string
  description = "The name of the Virtual Network."
}

variable "address_space" {
  type        = list(string)
  description = "The CIDR block for the VNet."
}

variable "frontend_subnet" {
  type        = string
  description = "The address prefix for the frontend subnet."
}

variable "backend_subnet" {
  type        = string
  description = "The address prefix for the backend subnet."
}

variable "management_subnet" {
  type        = string
  description = "The address prefix for the management subnet."
}