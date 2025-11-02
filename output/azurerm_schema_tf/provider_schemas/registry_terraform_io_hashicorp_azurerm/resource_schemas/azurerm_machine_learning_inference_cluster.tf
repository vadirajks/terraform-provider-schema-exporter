resource "azurerm_machine_learning_inference_cluster" "name" {
  kubernetes_cluster_id = string (Required)
  location = string (Required)
  machine_learning_workspace_id = string (Required)
  name = string (Required)
  cluster_purpose = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  ssl block "list" (Optional) {
    cert = string (Optional)
    cname = string (Optional)
    key = string (Optional)
    leaf_domain_label = string (Optional)
    overwrite_existing_domain = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
