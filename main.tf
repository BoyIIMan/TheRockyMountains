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

# -----------------------------
# Resource Group 
# -----------------------------
# This is being used to iterate over the resource groups defined in the variable files and create them based on whats defined.
resource "azurerm_resource_group" "rg" {
  for_each = var.resource_groups
  
  name     = each.value.name
  location = each.value.location
  tags     = var.tags
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