variable "rg" {
    type = string
    description = "RG for Virtual Network"
  
}

variable "location" {
    type = string
    description = "Location "
  
}

variable "vnet" {
    type = map(object({
        name = string
        address_space = string
    }))
    description = " vnet information "
  
}

variable "subnets" {
    type = map(object({
        name = string
        address_prefixes = string
    }))
    description = " vnet information "
  
}