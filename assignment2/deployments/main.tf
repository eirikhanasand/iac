

# Backend for storing the Terraform state


terraform {
  backend "azurerm" {
    resource_group_name  = var.rg-name
    storage_account_name = var.sa-name
    container_name       = "tfstate"
    key                  = "deployments/${terraform.workspace}.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Reference to global module (which encapsulates all your resources and modules)
module "global" {
  source = "../global"

  rg-name  = var.rg-name
  location = var.location
  vn-name  = var.vn-name
  sn-name  = var.sn-name
  sa-name  = var.sa-name
  sp-name  = var.sp-name
  sql-name = var.sql-name
  lb-name  = var.lb-name
}

output "deployment_vnet_id" {
  value = module.global.vnet-id
}

output "deployment_storage_account_id" {
  value = module.global.storage_account_id
}
