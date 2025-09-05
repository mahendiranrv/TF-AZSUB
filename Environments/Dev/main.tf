module "vnet" {
    source = "../../Modules/VNET"
    rg = "rg-dev"
location = "south india"

vnet = [{
        name = "vnet1"
        address_space = "10.1.0.0/16"
        subnet_name = "servers"
        address_prefix = "10.1.0.0/24"
    }  ]




