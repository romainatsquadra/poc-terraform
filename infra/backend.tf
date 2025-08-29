terraform {
  backend "azurerm" {
    resource_group_name   = "POC-TF"
    storage_account_name  = "terrraformstorageaccount"
    container_name        = "tfstate"
    key                   = "dev/terraform.tfstate"
    use_oidc              = true
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
  #subscription_id = "005577d6-9188-4141-938f-8e97d872c18a"
} 