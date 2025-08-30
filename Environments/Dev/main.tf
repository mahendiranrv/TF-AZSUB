module "vnet" {
    source = "../../Modules/VNET"
    rg = "rg-dev"
location = "south india"
vnet = {
    vnet = {
        name = "vnet"
        address_space = "10.1.1.0/16"
    }
}

subnets = {
    subnet1 = {
        name = "servers"
        address_prefix = "10.1.1.0/24"
    },

    subnet2 = {
        name = "devices"
        address_prefix = "10.1.2.0/24"
    }
}

}