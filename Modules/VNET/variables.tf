variable "rg" {
    type = string
    description = "RG for Virtual Network"
  
}

variable "location" {
    type = string
    description = "Location "

}
  
variable "vnet" {
    type = list(object({
      name = string
      address_space = string
    }))
    
}

variable "subnets" {
    type = list(object({
      name = string
      address_prefix = string 
    }))
  
}