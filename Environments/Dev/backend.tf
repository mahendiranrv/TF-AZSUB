## Remote state backend confirguration 

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfm-restatefiles"
    storage_account_name = "tfdevrmstatestorageacc03"
    container_name       = "tfrmstate"
    key                  = "dev.tfstate"

  }

}