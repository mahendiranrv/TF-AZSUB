terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 3.50"
    }
  }
}

provider "azurerm" {
  features {}
}

## Calling SP details from Azure Key vault ##

## Calling Client ID of SP ##

data "azurerm_key_vault_secret" "clientid" {
  name         = "client-id"
  key_vault_id = data.azurerm_key_vault.KV-SP-TF.id
}

output "clientid_value" {
  value     = data.azurerm_key_vault_secret.clientid.value
  sensitive = true
}

## Calling client secret of SP ##

data "azurerm_key_vault_secret" "clientsecret" {
  name         = "client-secret"
  key_vault_id = data.azurerm_key_vault.KV-SP-TF.id
}

output "clientid_value" {
  value     = data.azurerm_key_vault_secret.clientsecret.value
  sensitive = true
}

## Calling subscription id of SP ##

data "azurerm_key_vault_secret" "subscriptionid" {
  name         = "subscription-id"
  key_vault_id = data.azurerm_key_vault.KV-SP-TF.id
}

output "clientid_value" {
  value     = data.azurerm_key_vault_secret.subscriptionid.value
  sensitive = true
}

## Calling tenant id of SP ##

data "azurerm_key_vault_secret" "tenantid" {
  name         = "tenant-id"
  key_vault_id = data.azurerm_key_vault.KV-SP-TF.id
}

output "tenantid_value" {
  value     = data.azurerm_key_vault_secret.tenantid.value
  sensitive = true
}



