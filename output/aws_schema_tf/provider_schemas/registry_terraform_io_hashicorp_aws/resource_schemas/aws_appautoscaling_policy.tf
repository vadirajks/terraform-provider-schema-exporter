resource "aws_appautoscaling_policy" "name" {
  name = string (Required)
  resource_id = string (Required)
  scalable_dimension = string (Required)
  service_namespace = string (Required)
  alarm_arns = ['list', 'string'] (Computed)
  arn = string (Computed)
  id = string (Optional, Computed)
  policy_type = string (Optional)
  region = string (Optional, Computed)

  predictive_scaling_policy_configuration block "list" (Optional) {
    max_capacity_breach_behavior = string (Optional)
    max_capacity_buffer = number (Optional)
    mode = string (Optional, Computed)
    scheduling_buffer_time = number (Optional, Computed)

    metric_specification block "list" (Required) {
      target_value = string (Required)

      customized_capacity_metric_specification block "list" (Optional) {

        metric_data_query block "list" (Required) {
          id = string (Required)
          expression = string (Optional)
          label = string (Optional)
          return_data = bool (Optional)

          metric_stat block "list" (Optional) {
            stat = string (Required)
            unit = string (Optional)

            metric block "list" (Required) {
              metric_name = string (Optional)
              namespace = string (Optional)

              dimension block "set" (Optional) {
                name = string (Required)
                value = string (Required)
              }
            }
          }
        }
      }

      customized_load_metric_specification block "list" (Optional) {

        metric_data_query block "list" (Required) {
          id = string (Required)
          expression = string (Optional)
          label = string (Optional)
          return_data = bool (Optional)

          metric_stat block "list" (Optional) {
            stat = string (Required)
            unit = string (Optional)

            metric block "list" (Required) {
              metric_name = string (Optional)
              namespace = string (Optional)

              dimension block "set" (Optional) {
                name = string (Required)
                value = string (Required)
              }
            }
          }
        }
      }

      customized_scaling_metric_specification block "list" (Optional) {

        metric_data_query block "list" (Required) {
          id = string (Required)
          expression = string (Optional)
          label = string (Optional)
          return_data = bool (Optional)

          metric_stat block "list" (Optional) {
            stat = string (Required)
            unit = string (Optional)

            metric block "list" (Required) {
              metric_name = string (Optional)
              namespace = string (Optional)

              dimension block "set" (Optional) {
                name = string (Required)
                value = string (Required)
              }
            }
          }
        }
      }

      predefined_load_metric_specification block "list" (Optional) {
        predefined_metric_type = string (Required)
        resource_label = string (Optional)
      }

      predefined_metric_pair_specification block "list" (Optional) {
        predefined_metric_type = string (Required)
        resource_label = string (Optional)
      }

      predefined_scaling_metric_specification block "list" (Optional) {
        predefined_metric_type = string (Required)
        resource_label = string (Optional)
      }
    }
  }

  step_scaling_policy_configuration block "list" (Optional) {
    adjustment_type = string (Optional)
    cooldown = number (Optional)
    metric_aggregation_type = string (Optional)
    min_adjustment_magnitude = number (Optional)

    step_adjustment block "set" (Optional) {
      scaling_adjustment = number (Required)
      metric_interval_lower_bound = string (Optional)
      metric_interval_upper_bound = string (Optional)
    }
  }

  target_tracking_scaling_policy_configuration block "list" (Optional) {
    target_value = number (Required)
    disable_scale_in = bool (Optional)
    scale_in_cooldown = number (Optional)
    scale_out_cooldown = number (Optional)

    customized_metric_specification block "list" (Optional) {
      metric_name = string (Optional)
      namespace = string (Optional)
      statistic = string (Optional)
      unit = string (Optional)

      dimensions block "set" (Optional) {
        name = string (Required)
        value = string (Required)
      }

      metrics block "set" (Optional) {
        id = string (Required)
        expression = string (Optional)
        label = string (Optional)
        return_data = bool (Optional)

        metric_stat block "list" (Optional) {
          stat = string (Required)
          unit = string (Optional)

          metric block "list" (Required) {
            metric_name = string (Required)
            namespace = string (Required)

            dimensions block "set" (Optional) {
              name = string (Required)
              value = string (Required)
            }
          }
        }
      }
    }

    predefined_metric_specification block "list" (Optional) {
      predefined_metric_type = string (Required)
      resource_label = string (Optional)
    }
  }
}
