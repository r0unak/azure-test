
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

/*
terraform {
  backend "azurerm" {
    resource_group_name  = "tf-stage-azure-open-ai"
    storage_account_name = "terraformstateopen2024ai"
    container_name       = "terraformopenai2024"
    key                  = "terraform.tfstate"
  }
}*/

resource "azurerm_resource_group" "example" {
  name     = "example-resources5"
  location = "West Europe"
}

