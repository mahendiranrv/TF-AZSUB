resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}


resource "azurerm_virtual_network" "vnets" {
  for_each = var.vnets
  name                = each.key
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = [each.key]
  
    
  }

resource "azurerm_subnet" "example" {
  for_each = var.subnets
  name                 = each.key
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnets.id
  address_prefixes     = [each.key]

}