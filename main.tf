terraform {
  required_version = ">= 1.0, < 2.0"  # Adjust the version range accordingly

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"  # Adjust the version constraint accordingly
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "create"
  location = "East US"
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}
