resource "aws_macie2_classification_job" "name" {
  job_type = string (Required)
  created_at = string (Computed)
  custom_data_identifier_ids = ['list', 'string'] (Optional, Computed)
  description = string (Optional, Computed)
  id = string (Optional, Computed)
  initial_run = bool (Optional)
  job_arn = string (Computed)
  job_id = string (Computed)
  job_status = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  sampling_percentage = number (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  user_paused_details = ['list', ['object', {'job_expires_at': 'string', 'job_imminent_expiration_health_event_arn': 'string', 'job_paused_at': 'string'}]] (Computed)

  s3_job_definition block "list" (Required) {

    bucket_criteria block "list" (Optional) {

      excludes block "list" (Optional) {

        and block "list" (Optional) {

          simple_criterion block "list" (Optional) {
            comparator = string (Optional, Computed)
            key = string (Optional, Computed)
            values = ['list', 'string'] (Optional, Computed)
          }

          tag_criterion block "list" (Optional) {
            comparator = string (Optional, Computed)

            tag_values block "list" (Optional) {
              key = string (Optional, Computed)
              value = string (Optional, Computed)
            }
          }
        }
      }

      includes block "list" (Optional) {

        and block "list" (Optional) {

          simple_criterion block "list" (Optional) {
            comparator = string (Optional, Computed)
            key = string (Optional, Computed)
            values = ['list', 'string'] (Optional, Computed)
          }

          tag_criterion block "list" (Optional) {
            comparator = string (Optional, Computed)

            tag_values block "list" (Optional) {
              key = string (Optional, Computed)
              value = string (Optional, Computed)
            }
          }
        }
      }
    }

    bucket_definitions block "list" (Optional) {
      account_id = string (Required)
      buckets = ['list', 'string'] (Required)
    }

    scoping block "list" (Optional) {

      excludes block "list" (Optional) {

        and block "list" (Optional) {

          simple_scope_term block "list" (Optional) {
            comparator = string (Optional, Computed)
            key = string (Optional, Computed)
            values = ['list', 'string'] (Optional, Computed)
          }

          tag_scope_term block "list" (Optional) {
            comparator = string (Optional, Computed)
            key = string (Optional, Computed)
            target = string (Optional, Computed)

            tag_values block "list" (Optional) {
              key = string (Optional, Computed)
              value = string (Optional, Computed)
            }
          }
        }
      }

      includes block "list" (Optional) {

        and block "list" (Optional) {

          simple_scope_term block "list" (Optional) {
            comparator = string (Optional, Computed)
            key = string (Optional, Computed)
            values = ['list', 'string'] (Optional, Computed)
          }

          tag_scope_term block "list" (Optional) {
            comparator = string (Optional, Computed)
            key = string (Optional, Computed)
            target = string (Optional, Computed)

            tag_values block "list" (Optional) {
              key = string (Optional, Computed)
              value = string (Optional, Computed)
            }
          }
        }
      }
    }
  }

  schedule_frequency block "list" (Optional) {
    daily_schedule = bool (Optional)
    monthly_schedule = number (Optional, Computed)
    weekly_schedule = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
