variable "resource_group_name" {
    type = string
    description = "RG dev Virtual Network"
  
}

variable "location" {
    type = string
    description = "Location "

}
  
variable "vnets" {
    type = map(string)
          
}

variable "subnets" {
  type = map(string)
  
}

