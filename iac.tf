provider "azurerm" {
   
  features {}
  
  subscription_id = "c77bfc08-3f67-49ba-b2f9-aff082b6633a"
  client_id       = "dc9e5f42-c041-4a43-8e23-06b20b376918"
  client_secret   = "wf47Q~0cR3f~BQcMJpvRCCDKNrHjlzW1dWPz3"
  tenant_id       = "0cd918a9-4931-47ac-9f0c-5c37bd36a6de"
}
terraform {
    backend "azurerm" {
        resource_group_name ="jenkins-rg"
        storage_account_name = "terastoretr1"
        container_name = "con1"
        key = "terraform.tfstate"
    }
}

resource "azurerm_resource_group" "demo" {
  name     = "demo5rg"
    location = "eastus"
}
