module "keyvault" {
  source                      = "./infra/keyvault"
  name                        = "newkv4198445"
  location                    = "eastus"
  rg                          = "POC-TF"
  tenant_id                   = "72958850-e7e7-4b9c-a59c-0418c1d5bf91"
  sku                         = "standard"
}