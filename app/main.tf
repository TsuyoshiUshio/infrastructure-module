provider "azurerm" {
  version = "=1.39.0"
}
terraform {
    backend "azurerm" {
    }
}

module "rg" {
    source = "./rg"
    location = var.location
    resource_group_name = var.resource_group_name
}

variable location {
    description = "Location of the Virtual Net"
}

variable resource_group_name {
    description = "Resource Group Name for the virtual net"
}