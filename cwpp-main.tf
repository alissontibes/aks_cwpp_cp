resource "dome9_cloudaccount_kubernetes" "cspm-cluster" {
  name = var.k8s-cluster-name
  organizational_unit_id = var.cspm-org-unit-id

  image_assurance {
    enabled = true
  }
 runtime_protection {
    enabled = true
  }
  admission_control {
    enabled = true
  }
}
