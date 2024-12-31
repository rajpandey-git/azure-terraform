terraform {
  required_version = ">=1.0"
  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    
  }
  backend "azurerm" {
    resource_group_name   = "akeyless-rg"
    storage_account_name  = "teststorageaccount1290"
    container_name        = "tfstatestorage"
    key                   = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
}