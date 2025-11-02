resource "google_eventarc_trigger" "name" {
  location = string (Required)
  name = string (Required)
  channel = string (Optional)
  conditions = ['map', 'string'] (Computed)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  event_data_content_type = string (Optional, Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  service_account = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  destination block "list" (Required) {
    cloud_function = string (Computed)
    workflow = string (Optional)

    cloud_run_service block "list" (Optional) {
      service = string (Required)
      path = string (Optional)
      region = string (Optional, Computed)
    }

    gke block "list" (Optional) {
      cluster = string (Required)
      location = string (Required)
      namespace = string (Required)
      service = string (Required)
      path = string (Optional)
    }

    http_endpoint block "list" (Optional) {
      uri = string (Required)
    }

    network_config block "list" (Optional) {
      network_attachment = string (Required)
    }
  }

  matching_criteria block "set" (Required) {
    attribute = string (Required)
    value = string (Required)
    operator = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  transport block "list" (Optional) {

    pubsub block "list" (Optional) {
      subscription = string (Computed)
      topic = string (Optional)
    }
  }
}
