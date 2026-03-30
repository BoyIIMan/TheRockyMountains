# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# -----------------------------
# Networking Module
# -----------------------------
module "networking" {
  source = "./modules/networking"

  # Pass values from root → module
  vnet_name            = var.vnet_name
  vnet_address_space   = var.vnet_address_space
  subnet_name          = var.subnet_name
  subnet_address_space = var.subnet_address_space

  # Pass resource group info
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}