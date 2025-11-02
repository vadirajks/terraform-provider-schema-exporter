resource "google_container_attached_cluster" "name" {
  distribution = string (Required)
  location = string (Required)
  name = string (Required)
  platform_version = string (Required)
  annotations = ['map', 'string'] (Optional)
  cluster_region = string (Computed)
  create_time = string (Computed)
  deletion_policy = string (Optional)
  description = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  errors = ['list', ['object', {'message': 'string'}]] (Computed)
  id = string (Optional, Computed)
  kubernetes_version = string (Computed)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  state = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)
  workload_identity_config = ['list', ['object', {'identity_provider': 'string', 'issuer_uri': 'string', 'workload_pool': 'string'}]] (Computed)

  authorization block "list" (Optional) {
    admin_groups = ['list', 'string'] (Optional)
    admin_users = ['list', 'string'] (Optional)
  }

  binary_authorization block "list" (Optional) {
    evaluation_mode = string (Optional)
  }

  fleet block "list" (Required) {
    project = string (Required)
    membership = string (Computed)
  }

  logging_config block "list" (Optional) {

    component_config block "list" (Optional) {
      enable_components = ['list', 'string'] (Optional)
    }
  }

  monitoring_config block "list" (Optional) {

    managed_prometheus_config block "list" (Optional) {
      enabled = bool (Optional)
    }
  }

  oidc_config block "list" (Required) {
    issuer_url = string (Required)
    jwks = string (Optional)
  }

  proxy_config block "list" (Optional) {

    kubernetes_secret block "list" (Optional) {
      name = string (Required)
      namespace = string (Required)
    }
  }

  security_posture_config block "list" (Optional) {
    vulnerability_mode = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
