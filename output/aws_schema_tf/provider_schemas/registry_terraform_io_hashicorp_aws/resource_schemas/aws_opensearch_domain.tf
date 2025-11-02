resource "aws_opensearch_domain" "name" {
  domain_name = string (Required)
  access_policies = string (Optional, Computed)
  advanced_options = ['map', 'string'] (Optional, Computed)
  arn = string (Computed)
  dashboard_endpoint = string (Computed)
  dashboard_endpoint_v2 = string (Computed)
  domain_endpoint_v2_hosted_zone_id = string (Computed)
  domain_id = string (Computed)
  endpoint = string (Computed)
  endpoint_v2 = string (Computed)
  engine_version = string (Optional, Computed)
  id = string (Optional, Computed)
  ip_address_type = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  advanced_security_options block "list" (Optional) {
    enabled = bool (Required)
    anonymous_auth_enabled = bool (Optional, Computed)
    internal_user_database_enabled = bool (Optional)

    master_user_options block "list" (Optional) {
      master_user_arn = string (Optional)
      master_user_name = string (Optional)
      master_user_password = string (Optional)
    }
  }

  aiml_options block "list" (Optional) {

    natural_language_query_generation_options block "list" (Optional) {
      desired_state = string (Optional, Computed)
    }

    s3_vectors_engine block "list" (Optional) {
      enabled = bool (Optional, Computed)
    }
  }

  auto_tune_options block "list" (Optional) {
    desired_state = string (Required)
    rollback_on_disable = string (Optional, Computed)
    use_off_peak_window = bool (Optional)

    maintenance_schedule block "set" (Optional) {
      cron_expression_for_recurrence = string (Required)
      start_at = string (Required)

      duration block "list" (Required) {
        unit = string (Required)
        value = number (Required)
      }
    }
  }

  cluster_config block "list" (Optional) {
    dedicated_master_count = number (Optional)
    dedicated_master_enabled = bool (Optional)
    dedicated_master_type = string (Optional)
    instance_count = number (Optional)
    instance_type = string (Optional)
    multi_az_with_standby_enabled = bool (Optional)
    warm_count = number (Optional)
    warm_enabled = bool (Optional)
    warm_type = string (Optional)
    zone_awareness_enabled = bool (Optional)

    cold_storage_options block "list" (Optional) {
      enabled = bool (Optional, Computed)
    }

    node_options block "list" (Optional) {
      node_type = string (Optional, Computed)

      node_config block "list" (Optional) {
        count = number (Optional, Computed)
        enabled = bool (Optional, Computed)
        type = string (Optional, Computed)
      }
    }

    zone_awareness_config block "list" (Optional) {
      availability_zone_count = number (Optional)
    }
  }

  cognito_options block "list" (Optional) {
    identity_pool_id = string (Required)
    role_arn = string (Required)
    user_pool_id = string (Required)
    enabled = bool (Optional)
  }

  domain_endpoint_options block "list" (Optional) {
    custom_endpoint = string (Optional)
    custom_endpoint_certificate_arn = string (Optional)
    custom_endpoint_enabled = bool (Optional)
    enforce_https = bool (Optional)
    tls_security_policy = string (Optional, Computed)
  }

  ebs_options block "list" (Optional) {
    ebs_enabled = bool (Required)
    iops = number (Optional, Computed)
    throughput = number (Optional, Computed)
    volume_size = number (Optional)
    volume_type = string (Optional, Computed)
  }

  encrypt_at_rest block "list" (Optional) {
    enabled = bool (Required)
    kms_key_id = string (Optional, Computed)
  }

  log_publishing_options block "set" (Optional) {
    cloudwatch_log_group_arn = string (Required)
    log_type = string (Required)
    enabled = bool (Optional)
  }

  node_to_node_encryption block "list" (Optional) {
    enabled = bool (Required)
  }

  off_peak_window_options block "list" (Optional) {
    enabled = bool (Optional, Computed)

    off_peak_window block "list" (Optional) {

      window_start_time block "list" (Optional) {
        hours = number (Optional, Computed)
        minutes = number (Optional, Computed)
      }
    }
  }

  snapshot_options block "list" (Optional) {
    automated_snapshot_start_hour = number (Required)
  }

  software_update_options block "list" (Optional) {
    auto_software_update_enabled = bool (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc_options block "list" (Optional) {
    availability_zones = ['set', 'string'] (Computed)
    security_group_ids = ['set', 'string'] (Optional)
    subnet_ids = ['set', 'string'] (Optional)
    vpc_id = string (Computed)
  }
}
