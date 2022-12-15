terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.35.0"
    }
  }
}
provider "azurerm" {
  # Configuration options
  subscription_id = "81c885bc-2dea-400e-8f5d-872acf230e16" 
  tenant_id = "f68a44d8-0e21-470d-b301-f7dba9d4f515"
  client_id =  "f7c9958a-a552-4366-b031-02c1497015cc"
  client_secret = "hs78Q~JN6K5PuNErzPUxKs7CY~g0H~pQIUa55aG6"
  features {}
}

