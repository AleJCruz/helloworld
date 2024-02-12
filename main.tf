provider "azurerm" {
  features = {}
  subscription_id = "8aa7433f-6015-4397-9889-1d2d794e633d"
  client_id       = "8aa7433f-6015-4397-9889-1d2d794e633d"
  client_secret   = "wOi8Q~aM-tsekMej543FtVELrOxP9H26pFjWOaCL"
  tenant_id       = "e3de6039-942b-4f3e-b8fa-8d8008f8fd74"
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
