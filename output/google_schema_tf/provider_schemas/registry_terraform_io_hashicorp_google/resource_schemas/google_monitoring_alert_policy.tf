resource "google_monitoring_alert_policy" "name" {
  combiner = string (Required)
  display_name = string (Required)
  creation_record = ['list', ['object', {'mutate_time': 'string', 'mutated_by': 'string'}]] (Computed)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  notification_channels = ['list', 'string'] (Optional)
  project = string (Optional, Computed)
  severity = string (Optional)
  user_labels = ['map', 'string'] (Optional)

  alert_strategy block "list" (Optional) {
    auto_close = string (Optional)
    notification_prompts = ['list', 'string'] (Optional)

    notification_channel_strategy block "list" (Optional) {
      notification_channel_names = ['list', 'string'] (Optional)
      renotify_interval = string (Optional)
    }

    notification_rate_limit block "list" (Optional) {
      period = string (Optional)
    }
  }

  conditions block "list" (Required) {
    display_name = string (Required)
    name = string (Computed)

    condition_absent block "list" (Optional) {
      duration = string (Required)
      filter = string (Optional)

      aggregations block "list" (Optional) {
        alignment_period = string (Optional)
        cross_series_reducer = string (Optional)
        group_by_fields = ['list', 'string'] (Optional)
        per_series_aligner = string (Optional)
      }

      trigger block "list" (Optional) {
        count = number (Optional)
        percent = number (Optional)
      }
    }

    condition_matched_log block "list" (Optional) {
      filter = string (Required)
      label_extractors = ['map', 'string'] (Optional)
    }

    condition_monitoring_query_language block "list" (Optional) {
      duration = string (Required)
      query = string (Required)
      evaluation_missing_data = string (Optional)

      trigger block "list" (Optional) {
        count = number (Optional)
        percent = number (Optional)
      }
    }

    condition_prometheus_query_language block "list" (Optional) {
      query = string (Required)
      alert_rule = string (Optional)
      disable_metric_validation = bool (Optional)
      duration = string (Optional)
      evaluation_interval = string (Optional)
      labels = ['map', 'string'] (Optional)
      rule_group = string (Optional)
    }

    condition_sql block "list" (Optional) {
      query = string (Required)

      boolean_test block "list" (Optional) {
        column = string (Required)
      }

      daily block "list" (Optional) {
        periodicity = number (Required)

        execution_time block "list" (Optional) {
          hours = number (Optional)
          minutes = number (Optional)
          nanos = number (Optional)
          seconds = number (Optional)
        }
      }

      hourly block "list" (Optional) {
        periodicity = number (Required)
        minute_offset = number (Optional)
      }

      minutes block "list" (Optional) {
        periodicity = number (Required)
      }

      row_count_test block "list" (Optional) {
        comparison = string (Required)
        threshold = number (Required)
      }
    }

    condition_threshold block "list" (Optional) {
      comparison = string (Required)
      duration = string (Required)
      denominator_filter = string (Optional)
      evaluation_missing_data = string (Optional)
      filter = string (Optional)
      threshold_value = number (Optional)

      aggregations block "list" (Optional) {
        alignment_period = string (Optional)
        cross_series_reducer = string (Optional)
        group_by_fields = ['list', 'string'] (Optional)
        per_series_aligner = string (Optional)
      }

      denominator_aggregations block "list" (Optional) {
        alignment_period = string (Optional)
        cross_series_reducer = string (Optional)
        group_by_fields = ['list', 'string'] (Optional)
        per_series_aligner = string (Optional)
      }

      forecast_options block "list" (Optional) {
        forecast_horizon = string (Required)
      }

      trigger block "list" (Optional) {
        count = number (Optional)
        percent = number (Optional)
      }
    }
  }

  documentation block "list" (Optional) {
    content = string (Optional)
    mime_type = string (Optional)
    subject = string (Optional)

    links block "list" (Optional) {
      display_name = string (Optional)
      url = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
