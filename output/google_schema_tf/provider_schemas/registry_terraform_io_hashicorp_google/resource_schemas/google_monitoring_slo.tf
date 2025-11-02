resource "google_monitoring_slo" "name" {
  goal = number (Required)
  service = string (Required)
  calendar_period = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  rolling_period_days = number (Optional)
  slo_id = string (Optional, Computed)
  user_labels = ['map', 'string'] (Optional)

  basic_sli block "list" (Optional) {
    location = ['set', 'string'] (Optional)
    method = ['set', 'string'] (Optional)
    version = ['set', 'string'] (Optional)

    availability block "list" (Optional) {
      enabled = bool (Optional)
    }

    latency block "list" (Optional) {
      threshold = string (Required)
    }
  }

  request_based_sli block "list" (Optional) {

    distribution_cut block "list" (Optional) {
      distribution_filter = string (Required)

      range block "list" (Required) {
        max = number (Optional)
        min = number (Optional)
      }
    }

    good_total_ratio block "list" (Optional) {
      bad_service_filter = string (Optional)
      good_service_filter = string (Optional)
      total_service_filter = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  windows_based_sli block "list" (Optional) {
    good_bad_metric_filter = string (Optional)
    window_period = string (Optional)

    good_total_ratio_threshold block "list" (Optional) {
      threshold = number (Optional)

      basic_sli_performance block "list" (Optional) {
        location = ['set', 'string'] (Optional)
        method = ['set', 'string'] (Optional)
        version = ['set', 'string'] (Optional)

        availability block "list" (Optional) {
          enabled = bool (Optional)
        }

        latency block "list" (Optional) {
          threshold = string (Required)
        }
      }

      performance block "list" (Optional) {

        distribution_cut block "list" (Optional) {
          distribution_filter = string (Required)

          range block "list" (Required) {
            max = number (Optional)
            min = number (Optional)
          }
        }

        good_total_ratio block "list" (Optional) {
          bad_service_filter = string (Optional)
          good_service_filter = string (Optional)
          total_service_filter = string (Optional)
        }
      }
    }

    metric_mean_in_range block "list" (Optional) {
      time_series = string (Required)

      range block "list" (Required) {
        max = number (Optional)
        min = number (Optional)
      }
    }

    metric_sum_in_range block "list" (Optional) {
      time_series = string (Required)

      range block "list" (Required) {
        max = number (Optional)
        min = number (Optional)
      }
    }
  }
}
