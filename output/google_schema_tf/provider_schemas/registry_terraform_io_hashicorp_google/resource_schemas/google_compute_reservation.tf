resource "google_compute_reservation" "name" {
  name = string (Required)
  zone = string (Required)
  commitment = string (Computed)
  creation_timestamp = string (Computed)
  delete_at_time = string (Optional, Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  self_link = string (Computed)
  specific_reservation_required = bool (Optional)
  status = string (Computed)

  delete_after_duration block "list" (Optional) {
    nanos = number (Optional)
    seconds = string (Optional)
  }

  reservation_sharing_policy block "list" (Optional) {
    service_share_type = string (Optional, Computed)
  }

  share_settings block "list" (Optional) {
    share_type = string (Optional, Computed)

    project_map block "set" (Optional) {
      id = string (Required)
      project_id = string (Optional)
    }
  }

  specific_reservation block "list" (Required) {
    count = number (Required)
    in_use_count = number (Computed)
    source_instance_template = string (Optional)

    instance_properties block "list" (Optional) {
      machine_type = string (Required)
      min_cpu_platform = string (Optional, Computed)

      guest_accelerators block "list" (Optional) {
        accelerator_count = number (Required)
        accelerator_type = string (Required)
      }

      local_ssds block "list" (Optional) {
        disk_size_gb = number (Required)
        interface = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
