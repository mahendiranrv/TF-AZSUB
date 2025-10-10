module "vnet" {
    source = "../../Modules/VNET"
    resource_group_name = var.resource_group_name
    location = var.location
    vnet = var.vnet
    subnet = var.subnet
}