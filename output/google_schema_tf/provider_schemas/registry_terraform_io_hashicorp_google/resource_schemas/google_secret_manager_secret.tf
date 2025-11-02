resource "google_secret_manager_secret" "name" {
  secret_id = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  deletion_protection = bool (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  expire_time = string (Optional, Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  ttl = string (Optional)
  version_aliases = ['map', 'string'] (Optional)
  version_destroy_ttl = string (Optional)

  replication block "list" (Required) {

    auto block "list" (Optional) {

      customer_managed_encryption block "list" (Optional) {
        kms_key_name = string (Required)
      }
    }

    user_managed block "list" (Optional) {

      replicas block "list" (Required) {
        location = string (Required)

        customer_managed_encryption block "list" (Optional) {
          kms_key_name = string (Required)
        }
      }
    }
  }

  rotation block "list" (Optional) {
    next_rotation_time = string (Optional)
    rotation_period = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  topics block "list" (Optional) {
    name = string (Required)
  }
}
