resource "azurerm_resource_group" "rg" {
  name     = var.rg
  location = var.location
}


resource "azurerm_virtual_network" "vnets" {
  name                = var.vnet[count.index].name
  location            = var.location
  resource_group_name = var.rg
  address_space       = [var.vnet[count.index].address_space]
  

  subnet {
    name             = var.subnets[count.index].name
    address_prefixes = [var.subnets[count.index].address_prefix]
  }

  subnet {
    name             = var.subnets[count.index].name
    address_prefixes = [var.subnets[count.index].address_prefix]
    
  }

}