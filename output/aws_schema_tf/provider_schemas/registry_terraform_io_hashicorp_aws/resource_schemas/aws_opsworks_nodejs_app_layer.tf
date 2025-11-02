resource "aws_opsworks_nodejs_app_layer" "name" {
  stack_id = string (Required)
  arn = string (Computed)
  auto_assign_elastic_ips = bool (Optional)
  auto_assign_public_ips = bool (Optional)
  auto_healing = bool (Optional)
  custom_configure_recipes = ['list', 'string'] (Optional)
  custom_deploy_recipes = ['list', 'string'] (Optional)
  custom_instance_profile_arn = string (Optional)
  custom_json = string (Optional)
  custom_security_group_ids = ['set', 'string'] (Optional)
  custom_setup_recipes = ['list', 'string'] (Optional)
  custom_shutdown_recipes = ['list', 'string'] (Optional)
  custom_undeploy_recipes = ['list', 'string'] (Optional)
  drain_elb_on_shutdown = bool (Optional)
  elastic_load_balancer = string (Optional)
  id = string (Optional, Computed)
  install_updates_on_boot = bool (Optional)
  instance_shutdown_timeout = number (Optional)
  name = string (Optional)
  nodejs_version = string (Optional)
  system_packages = ['set', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  use_ebs_optimized_instances = bool (Optional)

  cloudwatch_configuration block "list"  (Optional){
    enabled = bool (Optional)

    log_streams block "list"  (Optional){
      file = string (Required)
      log_group_name = string (Required)
      batch_count = number (Optional)
      batch_size = number (Optional)
      buffer_duration = number (Optional)
      datetime_format = string (Optional)
      encoding = string (Optional)
      file_fingerprint_lines = string (Optional)
      initial_position = string (Optional)
      multiline_start_pattern = string (Optional)
      time_zone = string (Optional)
    }
  }

  ebs_volume block "set"  (Optional){
    mount_point = string (Required)
    number_of_disks = number (Required)
    size = number (Required)
    encrypted = bool (Optional)
    iops = number (Optional)
    raid_level = string (Optional)
    type = string (Optional)
  }

  load_based_auto_scaling block "list"  (Optional){
    enable = bool (Optional)

    downscaling block "list"  (Optional){
      alarms = ['list', 'string'] (Optional)
      cpu_threshold = number (Optional)
      ignore_metrics_time = number (Optional)
      instance_count = number (Optional)
      load_threshold = number (Optional)
      memory_threshold = number (Optional)
      thresholds_wait_time = number (Optional)
    }

    upscaling block "list"  (Optional){
      alarms = ['list', 'string'] (Optional)
      cpu_threshold = number (Optional)
      ignore_metrics_time = number (Optional)
      instance_count = number (Optional)
      load_threshold = number (Optional)
      memory_threshold = number (Optional)
      thresholds_wait_time = number (Optional)
    }
  }
}
