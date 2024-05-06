resource "azurerm_resource_group" "rg-aks-cluster" {
  name     = "rg-${var.k8s-cluster-name}"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks-cluster" {
    name                = var.k8s-cluster-name
    location            = azurerm_resource_group.rg-aks-cluster.location
    resource_group_name = azurerm_resource_group.rg-aks-cluster.name
    dns_prefix          = var.k8s-cluster-name
    
    default_node_pool {
      name            = "ckpnodepool"
      node_count      = var.node-pool-count
      vm_size         = "Standard_D2_v3"
    }
    node_resource_group = "${azurerm_resource_group.rg-aks-cluster.name}-nodepool"
    
    identity {
      type = "SystemAssigned"
    }
    
     network_profile {
      load_balancer_sku = "standard"
      network_plugin    = "kubenet"
    }
}