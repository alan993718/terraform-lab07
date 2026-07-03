variable "resource_group_name" {
  type    = string
  default = "rg-module-demo"
}

variable "location" {
  type    = string
  default = "ukwest"
}

variable "vnet_name" {
  type    = string
  default = "vnet-module"
}

variable "address_space" {
  type    = list(string)
  default = ["10.10.0.0/16"]
}

variable "frontend_subnet" {
  type    = string
  default = "10.10.1.0/24"
}

variable "backend_subnet" {
  type    = string
  default = "10.10.2.0/24"
}

variable "management_subnet" {
  type    = string
  default = "10.10.3.0/24"
}