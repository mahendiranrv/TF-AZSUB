module "vnet" {
    source = "../../Modules/VNET"
    rg = var.rg
    location = var.location
    vnet = var.vnet
    subnets = var.subnets

}