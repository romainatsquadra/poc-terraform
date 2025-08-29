module "keyvault" {
  source                      = "./modules/keyvault"
  name                        = "newkv4198445"
  location                    = "eastus"
  rg                          = "POC-TF"
  tenant_id                   = "72958850-e7e7-4b9c-a59c-0418c1d5bf91"
  sku                         = "standard"
}

module "vnet" {
  source              = "./modules/vnet"
  vnet_name           = "my-vnet-poc84895"
  address_space       = ["10.10.0.0/16"]
  location            = "eastus"
  resource_group_name = "POC-TF"
  subnet_name         = "aks-subnet-poc84895"
  subnet_prefixes     = ["10.10.1.0/24"]
}

module "identity" {
  source              = "./modules/managed_identity"
  name                = "aks-identity-poc84895"
  location            = "eastus"
  resource_group_name = "POC-TF"
}

module "aks" {
  source              = "./modules/aks"
  cluster_name        = "my-aks-poc84895"
  location            = "eastus"
  resource_group_name = "POC-TF"
  dns_prefix          = "myaks-poc84895"
  node_count          = 1
  vm_size             = "Standard_DS2_v2"
  subnet_id           = module.vnet.subnet_id
  identity_id         = module.identity.identity_id
  depends_on = [module.vnet, module.identity]
}
