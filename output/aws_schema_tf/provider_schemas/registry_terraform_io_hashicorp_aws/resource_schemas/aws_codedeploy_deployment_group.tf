resource "aws_codedeploy_deployment_group" "name" {
  app_name = string (Required)
  deployment_group_name = string (Required)
  service_role_arn = string (Required)
  arn = string (Computed)
  autoscaling_groups = ['set', 'string'] (Optional)
  compute_platform = string (Computed)
  deployment_config_name = string (Optional)
  deployment_group_id = string (Computed)
  id = string (Optional, Computed)
  outdated_instances_strategy = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  termination_hook_enabled = bool (Optional)

  alarm_configuration block "list" (Optional) {
    alarms = ['set', 'string'] (Optional)
    enabled = bool (Optional)
    ignore_poll_alarm_failure = bool (Optional)
  }

  auto_rollback_configuration block "list" (Optional) {
    enabled = bool (Optional)
    events = ['set', 'string'] (Optional)
  }

  blue_green_deployment_config block "list" (Optional) {

    deployment_ready_option block "list" (Optional) {
      action_on_timeout = string (Optional)
      wait_time_in_minutes = number (Optional)
    }

    green_fleet_provisioning_option block "list" (Optional) {
      action = string (Optional)
    }

    terminate_blue_instances_on_deployment_success block "list" (Optional) {
      action = string (Optional)
      termination_wait_time_in_minutes = number (Optional)
    }
  }

  deployment_style block "list" (Optional) {
    deployment_option = string (Optional)
    deployment_type = string (Optional)
  }

  ec2_tag_filter block "set" (Optional) {
    key = string (Optional)
    type = string (Optional)
    value = string (Optional)
  }

  ec2_tag_set block "set" (Optional) {

    ec2_tag_filter block "set" (Optional) {
      key = string (Optional)
      type = string (Optional)
      value = string (Optional)
    }
  }

  ecs_service block "list" (Optional) {
    cluster_name = string (Required)
    service_name = string (Required)
  }

  load_balancer_info block "list" (Optional) {

    elb_info block "set" (Optional) {
      name = string (Optional)
    }

    target_group_info block "set" (Optional) {
      name = string (Optional)
    }

    target_group_pair_info block "list" (Optional) {

      prod_traffic_route block "list" (Required) {
        listener_arns = ['set', 'string'] (Required)
      }

      target_group block "list" (Required) {
        name = string (Required)
      }

      test_traffic_route block "list" (Optional) {
        listener_arns = ['set', 'string'] (Required)
      }
    }
  }

  on_premises_instance_tag_filter block "set" (Optional) {
    key = string (Optional)
    type = string (Optional)
    value = string (Optional)
  }

  trigger_configuration block "set" (Optional) {
    trigger_events = ['set', 'string'] (Required)
    trigger_name = string (Required)
    trigger_target_arn = string (Required)
  }
}
