resource "azurerm_key_vault" "kv4894118" {
  name                        = var.name
  location                    = var.location
  resource_group_name         = var.rg
  tenant_id                   = var.tenant_id
  sku_name                    = var.sku
  enable_rbac_authorization   = true
}