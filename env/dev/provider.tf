terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.114.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "rg-devops"
    storage_account_name = "storageaccountdevops"
    container_name = "container-devops"
    key = "terraform.dev.tfstate"
    
  }
}
provider "azurerm" {
  features {}

}