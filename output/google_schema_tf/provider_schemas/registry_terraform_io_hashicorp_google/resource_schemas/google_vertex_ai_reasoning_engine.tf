resource "google_vertex_ai_reasoning_engine" "name" {
  display_name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  region = string (Optional)
  update_time = string (Computed)

  encryption_spec block "list" (Optional) {
    kms_key_name = string (Required)
  }

  spec block "list" (Optional) {
    agent_framework = string (Optional)
    class_methods = string (Optional)
    service_account = string (Optional)

    deployment_spec block "list" (Optional) {

      env block "set" (Optional) {
        name = string (Required)
        value = string (Required)
      }

      secret_env block "set" (Optional) {
        name = string (Required)

        secret_ref block "list" (Required) {
          secret = string (Required)
          version = string (Optional)
        }
      }
    }

    package_spec block "list" (Optional) {
      dependency_files_gcs_uri = string (Optional)
      pickle_object_gcs_uri = string (Optional)
      python_version = string (Optional)
      requirements_gcs_uri = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
