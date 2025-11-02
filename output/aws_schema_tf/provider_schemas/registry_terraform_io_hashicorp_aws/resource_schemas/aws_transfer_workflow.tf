resource "aws_transfer_workflow" "name" {
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  on_exception_steps block "list" (Optional) {
    type = string (Required)

    copy_step_details block "list" (Optional) {
      name = string (Optional)
      overwrite_existing = string (Optional)
      source_file_location = string (Optional)

      destination_file_location block "list" (Optional) {

        efs_file_location block "list" (Optional) {
          file_system_id = string (Optional)
          path = string (Optional)
        }

        s3_file_location block "list" (Optional) {
          bucket = string (Optional)
          key = string (Optional)
        }
      }
    }

    custom_step_details block "list" (Optional) {
      name = string (Optional)
      source_file_location = string (Optional)
      target = string (Optional)
      timeout_seconds = number (Optional)
    }

    decrypt_step_details block "list" (Optional) {
      type = string (Required)
      name = string (Optional)
      overwrite_existing = string (Optional)
      source_file_location = string (Optional)

      destination_file_location block "list" (Optional) {

        efs_file_location block "list" (Optional) {
          file_system_id = string (Optional)
          path = string (Optional)
        }

        s3_file_location block "list" (Optional) {
          bucket = string (Optional)
          key = string (Optional)
        }
      }
    }

    delete_step_details block "list" (Optional) {
      name = string (Optional)
      source_file_location = string (Optional)
    }

    tag_step_details block "list" (Optional) {
      name = string (Optional)
      source_file_location = string (Optional)

      tags block "list" (Optional) {
        key = string (Required)
        value = string (Required)
      }
    }
  }

  steps block "list" (Required) {
    type = string (Required)

    copy_step_details block "list" (Optional) {
      name = string (Optional)
      overwrite_existing = string (Optional)
      source_file_location = string (Optional)

      destination_file_location block "list" (Optional) {

        efs_file_location block "list" (Optional) {
          file_system_id = string (Optional)
          path = string (Optional)
        }

        s3_file_location block "list" (Optional) {
          bucket = string (Optional)
          key = string (Optional)
        }
      }
    }

    custom_step_details block "list" (Optional) {
      name = string (Optional)
      source_file_location = string (Optional)
      target = string (Optional)
      timeout_seconds = number (Optional)
    }

    decrypt_step_details block "list" (Optional) {
      type = string (Required)
      name = string (Optional)
      overwrite_existing = string (Optional)
      source_file_location = string (Optional)

      destination_file_location block "list" (Optional) {

        efs_file_location block "list" (Optional) {
          file_system_id = string (Optional)
          path = string (Optional)
        }

        s3_file_location block "list" (Optional) {
          bucket = string (Optional)
          key = string (Optional)
        }
      }
    }

    delete_step_details block "list" (Optional) {
      name = string (Optional)
      source_file_location = string (Optional)
    }

    tag_step_details block "list" (Optional) {
      name = string (Optional)
      source_file_location = string (Optional)

      tags block "list" (Optional) {
        key = string (Required)
        value = string (Required)
      }
    }
  }
}
