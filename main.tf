terraform {
  required_providers {
    source = "hashicorp/azurerm"
    version = "~> 2.65"
  }
}
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "example" {
  name     = "c"
  location = "East US"
}
resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}
