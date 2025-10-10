variable "resource_group_name" {
    type = string
    description = "RG dev Virtual Network"
  
}

variable "location" {
    type = string
    description = "Location "

}
  
variable "vnet" {
    type = map(string)
}

variable "subnet" {
  type = map(string)
  
}
