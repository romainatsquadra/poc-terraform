resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "System"
    node_count = var.node_count
    vm_size    = var.vm_size
    vnet_subnet_id = var.subnet_id
  }

  identity {
    type = "UserAssigned"
    user_assigned_identity_id = var.identity_id
  }

  network_profile {
    network_plugin = "azure"
    network_policy = "azure"
  }
}
