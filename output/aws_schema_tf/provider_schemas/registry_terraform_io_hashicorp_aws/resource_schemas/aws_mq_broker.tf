resource "aws_mq_broker" "name" {
  broker_name = string (Required)
  engine_type = string (Required)
  engine_version = string (Required)
  host_instance_type = string (Required)
  apply_immediately = bool (Optional)
  arn = string (Computed)
  authentication_strategy = string (Optional, Computed)
  auto_minor_version_upgrade = bool (Optional)
  data_replication_mode = string (Optional, Computed)
  data_replication_primary_broker_arn = string (Optional)
  deployment_mode = string (Optional)
  id = string (Optional, Computed)
  instances = ['list', ['object', {'console_url': 'string', 'endpoints': ['list', 'string'], 'ip_address': 'string'}]] (Computed)
  pending_data_replication_mode = string (Computed)
  publicly_accessible = bool (Optional)
  region = string (Optional, Computed)
  security_groups = ['set', 'string'] (Optional)
  storage_type = string (Optional, Computed)
  subnet_ids = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  configuration block "list" (Optional) {
    id = string (Optional, Computed)
    revision = number (Optional, Computed)
  }

  encryption_options block "list" (Optional) {
    kms_key_id = string (Optional, Computed)
    use_aws_owned_key = bool (Optional)
  }

  ldap_server_metadata block "list" (Optional) {
    hosts = ['list', 'string'] (Optional)
    role_base = string (Optional)
    role_name = string (Optional)
    role_search_matching = string (Optional)
    role_search_subtree = bool (Optional)
    service_account_password = string (Optional)
    service_account_username = string (Optional)
    user_base = string (Optional)
    user_role_name = string (Optional)
    user_search_matching = string (Optional)
    user_search_subtree = bool (Optional)
  }

  logs block "list" (Optional) {
    audit = string (Optional)
    general = bool (Optional)
  }

  maintenance_window_start_time block "list" (Optional) {
    day_of_week = string (Required)
    time_of_day = string (Required)
    time_zone = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  user block "set" (Required) {
    password = string (Required)
    username = string (Required)
    console_access = bool (Optional)
    groups = ['set', 'string'] (Optional)
    replication_user = bool (Optional)
  }
}
