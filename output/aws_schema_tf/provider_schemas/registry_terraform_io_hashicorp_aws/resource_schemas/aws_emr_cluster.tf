resource "aws_emr_cluster" "name" {
  name = string (Required)
  release_label = string (Required)
  service_role = string (Required)
  additional_info = string (Optional)
  applications = ['set', 'string'] (Optional)
  arn = string (Computed)
  autoscaling_role = string (Optional)
  cluster_state = string (Computed)
  configurations = string (Optional)
  configurations_json = string (Optional)
  custom_ami_id = string (Optional)
  ebs_root_volume_size = number (Optional)
  id = string (Optional, Computed)
  keep_job_flow_alive_when_no_steps = bool (Optional, Computed)
  list_steps_states = ['set', 'string'] (Optional)
  log_encryption_kms_key_id = string (Optional)
  log_uri = string (Optional)
  master_public_dns = string (Computed)
  os_release_label = string (Optional)
  placement_group_config = ['list', ['object', {'instance_role': 'string', 'placement_strategy': 'string'}]] (Optional)
  region = string (Optional, Computed)
  scale_down_behavior = string (Optional, Computed)
  security_configuration = string (Optional)
  step = ['list', ['object', {'action_on_failure': 'string', 'hadoop_jar_step': ['list', ['object', {'args': ['list', 'string'], 'jar': 'string', 'main_class': 'string', 'properties': ['map', 'string']}]], 'name': 'string'}]] (Optional, Computed)
  step_concurrency_level = number (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  termination_protection = bool (Optional, Computed)
  unhealthy_node_replacement = bool (Optional)
  visible_to_all_users = bool (Optional)

  auto_termination_policy block "list" (Optional) {
    idle_timeout = number (Optional)
  }

  bootstrap_action block "list" (Optional) {
    name = string (Required)
    path = string (Required)
    args = ['list', 'string'] (Optional)
  }

  core_instance_fleet block "list" (Optional) {
    id = string (Computed)
    name = string (Optional)
    provisioned_on_demand_capacity = number (Computed)
    provisioned_spot_capacity = number (Computed)
    target_on_demand_capacity = number (Optional)
    target_spot_capacity = number (Optional)

    instance_type_configs block "set" (Optional) {
      instance_type = string (Required)
      bid_price = string (Optional)
      bid_price_as_percentage_of_on_demand_price = number (Optional)
      weighted_capacity = number (Optional)

      configurations block "set" (Optional) {
        classification = string (Optional)
        properties = ['map', 'string'] (Optional)
      }

      ebs_config block "set" (Optional) {
        size = number (Required)
        type = string (Required)
        iops = number (Optional)
        volumes_per_instance = number (Optional)
      }
    }

    launch_specifications block "list" (Optional) {

      on_demand_specification block "list" (Optional) {
        allocation_strategy = string (Required)
      }

      spot_specification block "list" (Optional) {
        allocation_strategy = string (Required)
        timeout_action = string (Required)
        timeout_duration_minutes = number (Required)
        block_duration_minutes = number (Optional)
      }
    }
  }

  core_instance_group block "list" (Optional) {
    instance_type = string (Required)
    autoscaling_policy = string (Optional)
    bid_price = string (Optional)
    id = string (Computed)
    instance_count = number (Optional)
    name = string (Optional)

    ebs_config block "set" (Optional) {
      size = number (Required)
      type = string (Required)
      iops = number (Optional)
      throughput = number (Optional)
      volumes_per_instance = number (Optional)
    }
  }

  ec2_attributes block "list" (Optional) {
    instance_profile = string (Required)
    additional_master_security_groups = string (Optional)
    additional_slave_security_groups = string (Optional)
    emr_managed_master_security_group = string (Optional, Computed)
    emr_managed_slave_security_group = string (Optional, Computed)
    key_name = string (Optional)
    service_access_security_group = string (Optional, Computed)
    subnet_id = string (Optional, Computed)
    subnet_ids = ['set', 'string'] (Optional, Computed)
  }

  kerberos_attributes block "list" (Optional) {
    kdc_admin_password = string (Required)
    realm = string (Required)
    ad_domain_join_password = string (Optional)
    ad_domain_join_user = string (Optional)
    cross_realm_trust_principal_password = string (Optional)
  }

  master_instance_fleet block "list" (Optional) {
    id = string (Computed)
    name = string (Optional)
    provisioned_on_demand_capacity = number (Computed)
    provisioned_spot_capacity = number (Computed)
    target_on_demand_capacity = number (Optional)
    target_spot_capacity = number (Optional)

    instance_type_configs block "set" (Optional) {
      instance_type = string (Required)
      bid_price = string (Optional)
      bid_price_as_percentage_of_on_demand_price = number (Optional)
      weighted_capacity = number (Optional)

      configurations block "set" (Optional) {
        classification = string (Optional)
        properties = ['map', 'string'] (Optional)
      }

      ebs_config block "set" (Optional) {
        size = number (Required)
        type = string (Required)
        iops = number (Optional)
        volumes_per_instance = number (Optional)
      }
    }

    launch_specifications block "list" (Optional) {

      on_demand_specification block "list" (Optional) {
        allocation_strategy = string (Required)
      }

      spot_specification block "list" (Optional) {
        allocation_strategy = string (Required)
        timeout_action = string (Required)
        timeout_duration_minutes = number (Required)
        block_duration_minutes = number (Optional)
      }
    }
  }

  master_instance_group block "list" (Optional) {
    instance_type = string (Required)
    bid_price = string (Optional)
    id = string (Computed)
    instance_count = number (Optional)
    name = string (Optional)

    ebs_config block "set" (Optional) {
      size = number (Required)
      type = string (Required)
      iops = number (Optional)
      throughput = number (Optional)
      volumes_per_instance = number (Optional)
    }
  }
}
