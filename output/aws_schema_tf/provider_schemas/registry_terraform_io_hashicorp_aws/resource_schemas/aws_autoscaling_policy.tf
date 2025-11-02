resource "aws_autoscaling_policy" "name" {
  autoscaling_group_name = string (Required)
  name = string (Required)
  adjustment_type = string (Optional)
  arn = string (Computed)
  cooldown = number (Optional)
  enabled = bool (Optional)
  estimated_instance_warmup = number (Optional)
  id = string (Optional, Computed)
  metric_aggregation_type = string (Optional, Computed)
  min_adjustment_magnitude = number (Optional)
  policy_type = string (Optional)
  region = string (Optional, Computed)
  scaling_adjustment = number (Optional)

  predictive_scaling_configuration block "list" (Optional) {
    max_capacity_breach_behavior = string (Optional)
    max_capacity_buffer = string (Optional)
    mode = string (Optional)
    scheduling_buffer_time = string (Optional)

    metric_specification block "list" (Required) {
      target_value = number (Required)

      customized_capacity_metric_specification block "list" (Optional) {

        metric_data_queries block "list" (Required) {
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

      customized_load_metric_specification block "list" (Optional) {

        metric_data_queries block "list" (Required) {
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

      customized_scaling_metric_specification block "list" (Optional) {

        metric_data_queries block "list" (Required) {
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

  step_adjustment block "set" (Optional) {
    scaling_adjustment = number (Required)
    metric_interval_lower_bound = string (Optional)
    metric_interval_upper_bound = string (Optional)
  }

  target_tracking_configuration block "list" (Optional) {
    target_value = number (Required)
    disable_scale_in = bool (Optional)

    customized_metric_specification block "list" (Optional) {
      metric_name = string (Optional)
      namespace = string (Optional)
      period = number (Optional)
      statistic = string (Optional)
      unit = string (Optional)

      metric_dimension block "list" (Optional) {
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
          period = number (Optional)
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
