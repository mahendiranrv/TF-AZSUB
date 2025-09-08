module "vnet" {
    source = "../../Modules/VNET"
    resource_group_name = var.resource_group_name
    location = var.location
    vnets = var.vnets
    subnets = var.subnets

}