resource "aws_s3control_storage_lens_configuration" "name" {
  config_id = string (Required)
  account_id = string (Optional, Computed)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  storage_lens_configuration block "list" (Required) {
    enabled = bool (Required)

    account_level block "list" (Required) {

      activity_metrics block "list" (Optional) {
        enabled = bool (Optional)
      }

      advanced_cost_optimization_metrics block "list" (Optional) {
        enabled = bool (Optional)
      }

      advanced_data_protection_metrics block "list" (Optional) {
        enabled = bool (Optional)
      }

      bucket_level block "list" (Required) {

        activity_metrics block "list" (Optional) {
          enabled = bool (Optional)
        }

        advanced_cost_optimization_metrics block "list" (Optional) {
          enabled = bool (Optional)
        }

        advanced_data_protection_metrics block "list" (Optional) {
          enabled = bool (Optional)
        }

        detailed_status_code_metrics block "list" (Optional) {
          enabled = bool (Optional)
        }

        prefix_level block "list" (Optional) {

          storage_metrics block "list" (Required) {
            enabled = bool (Optional)

            selection_criteria block "list" (Optional) {
              delimiter = string (Optional)
              max_depth = number (Optional)
              min_storage_bytes_percentage = number (Optional)
            }
          }
        }
      }

      detailed_status_code_metrics block "list" (Optional) {
        enabled = bool (Optional)
      }
    }

    aws_org block "list" (Optional) {
      arn = string (Required)
    }

    data_export block "list" (Optional) {

      cloud_watch_metrics block "list" (Optional) {
        enabled = bool (Required)
      }

      s3_bucket_destination block "list" (Optional) {
        account_id = string (Required)
        arn = string (Required)
        format = string (Required)
        output_schema_version = string (Required)
        prefix = string (Optional)

        encryption block "list" (Optional) {

          sse_kms block "list" (Optional) {
            key_id = string (Required)
          }

          sse_s3 block "list" (Optional) {
          }
        }
      }
    }

    exclude block "list" (Optional) {
      buckets = ['set', 'string'] (Optional)
      regions = ['set', 'string'] (Optional)
    }

    include block "list" (Optional) {
      buckets = ['set', 'string'] (Optional)
      regions = ['set', 'string'] (Optional)
    }
  }
}
