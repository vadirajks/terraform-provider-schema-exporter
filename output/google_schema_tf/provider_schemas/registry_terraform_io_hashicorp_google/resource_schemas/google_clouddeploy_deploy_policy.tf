resource "google_clouddeploy_deploy_policy" "name" {
  location = string (Required)
  name = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  description = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  suspended = bool (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  rules block "list" (Required) {

    rollout_restriction block "list" (Optional) {
      id = string (Required)
      actions = ['list', 'string'] (Optional)
      invokers = ['list', 'string'] (Optional)

      time_windows block "list" (Optional) {
        time_zone = string (Required)

        one_time_windows block "list" (Optional) {

          end_date block "list" (Required) {
            day = number (Optional)
            month = number (Optional)
            year = number (Optional)
          }

          end_time block "list" (Required) {
            hours = number (Optional)
            minutes = number (Optional)
            nanos = number (Optional)
            seconds = number (Optional)
          }

          start_date block "list" (Required) {
            day = number (Optional)
            month = number (Optional)
            year = number (Optional)
          }

          start_time block "list" (Required) {
            hours = number (Optional)
            minutes = number (Optional)
            nanos = number (Optional)
            seconds = number (Optional)
          }
        }

        weekly_windows block "list" (Optional) {
          days_of_week = ['list', 'string'] (Optional)

          end_time block "list" (Optional) {
            hours = number (Optional)
            minutes = number (Optional)
            nanos = number (Optional)
            seconds = number (Optional)
          }

          start_time block "list" (Optional) {
            hours = number (Optional)
            minutes = number (Optional)
            nanos = number (Optional)
            seconds = number (Optional)
          }
        }
      }
    }
  }

  selectors block "list" (Required) {

    delivery_pipeline block "list" (Optional) {
      id = string (Optional)
      labels = ['map', 'string'] (Optional, Computed)
    }

    target block "list" (Optional) {
      id = string (Optional)
      labels = ['map', 'string'] (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
