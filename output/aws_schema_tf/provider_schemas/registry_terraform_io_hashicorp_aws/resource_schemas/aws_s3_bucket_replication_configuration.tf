resource "aws_s3_bucket_replication_configuration" "name" {
  bucket = string (Required)
  role = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  token = string (Optional)

  rule block "list" (Required) {
    status = string (Required)
    id = string (Optional, Computed)
    prefix = string (Optional)
    priority = number (Optional)

    delete_marker_replication block "list" (Optional) {
      status = string (Required)
    }

    destination block "list" (Required) {
      bucket = string (Required)
      account = string (Optional)
      storage_class = string (Optional)

      access_control_translation block "list" (Optional) {
        owner = string (Required)
      }

      encryption_configuration block "list" (Optional) {
        replica_kms_key_id = string (Required)
      }

      metrics block "list" (Optional) {
        status = string (Required)

        event_threshold block "list" (Optional) {
          minutes = number (Required)
        }
      }

      replication_time block "list" (Optional) {
        status = string (Required)

        time block "list" (Required) {
          minutes = number (Required)
        }
      }
    }

    existing_object_replication block "list" (Optional) {
      status = string (Required)
    }

    filter block "list" (Optional) {
      prefix = string (Optional)

      and block "list" (Optional) {
        prefix = string (Optional)
        tags = ['map', 'string'] (Optional)
      }

      tag block "list" (Optional) {
        key = string (Required)
        value = string (Required)
      }
    }

    source_selection_criteria block "list" (Optional) {

      replica_modifications block "list" (Optional) {
        status = string (Required)
      }

      sse_kms_encrypted_objects block "list" (Optional) {
        status = string (Required)
      }
    }
  }
}
