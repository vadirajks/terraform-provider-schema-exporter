resource "google_managed_kafka_cluster" "name" {
  cluster_id = string (Required)
  location = string (Required)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  capacity_config block "list" (Required) {
    memory_bytes = string (Required)
    vcpu_count = string (Required)
  }

  gcp_config block "list" (Required) {
    kms_key = string (Optional)

    access_config block "list" (Required) {

      network_configs block "list" (Required) {
        subnet = string (Required)
      }
    }
  }

  rebalance_config block "list" (Optional) {
    mode = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  tls_config block "list" (Optional) {
    ssl_principal_mapping_rules = string (Optional)

    trust_config block "list" (Optional) {

      cas_configs block "list" (Optional) {
        ca_pool = string (Required)
      }
    }
  }
}
