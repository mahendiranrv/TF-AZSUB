terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.50"
    }
  }
}

provider "azurerm" {
  features {}
  client_id       = data.azurerm_key_vault_secret.clientid.value
  client_secret   = data.azurerm_key_vault_secret.clientsecret.value
  subscription_id = data.azurerm_key_vault_secret.subscriptionid.value
  tenant_id       = data.azurerm_key_vault_secret.tenantid.value

}

## Calling SP details from Azure Key vault ##

data "azurerm_key_vault" "key_vault" {
  name                = "KV-SP-TF"
  resource_group_name = "RG-tf-keyvault"

}

## Calling Client ID of SP ##

data "azurerm_key_vault_secret" "clientid" {
  name         = "client-id"
  key_vault_id = data.azurerm_key_vault.key_vault.id
}

output "clientid_value" {
  value     = data.azurerm_key_vault_secret.clientid.value
  sensitive = true
}

## Calling client secret of SP ##

data "azurerm_key_vault_secret" "clientsecret" {
  name         = "client-secret"
  key_vault_id = data.azurerm_key_vault.key_vault.id
}

output "clientsecret_value" {
  value     = data.azurerm_key_vault_secret.clientsecret.value
  sensitive = true
}

## Calling subscription id of SP ##

data "azurerm_key_vault_secret" "subscriptionid" {
  name         = "subscription-id"
  key_vault_id = data.azurerm_key_vault.key_vault.id
}

output "subscriptionid_value" {
  value     = data.azurerm_key_vault_secret.subscriptionid.value
  sensitive = true
}

## Calling tenant id of SP ##

data "azurerm_key_vault_secret" "tenantid" {
  name         = "tenant-id"
  key_vault_id = data.azurerm_key_vault.key_vault.id
}

output "tenantid_value" {
  value     = data.azurerm_key_vault_secret.tenantid.value
  sensitive = true
}



