resource "azurerm_resource_group" "rg-vnet" {
  name     = var.rg
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  for_each = var.vnet
  name                = each.key.name
  location            = var.location
  resource_group_name = var.rg
  address_space       = [each.value.address_space]
  depends_on = [ azurerm_resource_group.rg-vnet ]

}

resource "azurerm_subnet" "subnets" {
    for_each = var.subnets
  name                 = each.key.name
  resource_group_name  = var.rg
  virtual_network_name = azurerm_virtual_network.vnet.id
  address_prefixes     = [each.key.address_prefixes]
  depends_on = [ azurerm_virtual_network.vnet ]

}