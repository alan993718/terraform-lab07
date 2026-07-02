module "resource_group" {
  source              = "./modules/resource-group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "networking" {
  source = "./modules/networking"

  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  vnet_name          = var.vnet_name
  address_space       = var.address_space
  frontend_subnet     = var.frontend_subnet
  backend_subnet      = var.backend_subnet
  management_subnet   = var.management_subnet
}