terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "satfstatealan01"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

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
# Connect and orchestrate the Linux VM module
module "vm" {
  source              = "./modules/compute"
  vm_name             = "lab07-linux-vm"
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  subnet_id           = module.networking.frontend_subnet_id # Hands off the subnet ID from your networking module
}
