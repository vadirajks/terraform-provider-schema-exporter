resource "google_container_aws_cluster" "name" {
  aws_region = string (Required)
  location = string (Required)
  name = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  description = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  endpoint = string (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  state = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)
  workload_identity_config = ['list', ['object', {'identity_provider': 'string', 'issuer_uri': 'string', 'workload_pool': 'string'}]] (Computed)

  authorization block "list" (Required) {

    admin_groups block "list" (Optional) {
      group = string (Required)
    }

    admin_users block "list" (Required) {
      username = string (Required)
    }
  }

  binary_authorization block "list" (Optional) {
    evaluation_mode = string (Optional, Computed)
  }

  control_plane block "list" (Required) {
    iam_instance_profile = string (Required)
    subnet_ids = ['list', 'string'] (Required)
    version = string (Required)
    instance_type = string (Optional, Computed)
    security_group_ids = ['list', 'string'] (Optional)
    tags = ['map', 'string'] (Optional)

    aws_services_authentication block "list" (Required) {
      role_arn = string (Required)
      role_session_name = string (Optional, Computed)
    }

    config_encryption block "list" (Required) {
      kms_key_arn = string (Required)
    }

    database_encryption block "list" (Required) {
      kms_key_arn = string (Required)
    }

    main_volume block "list" (Optional) {
      iops = number (Optional, Computed)
      kms_key_arn = string (Optional)
      size_gib = number (Optional, Computed)
      throughput = number (Optional, Computed)
      volume_type = string (Optional, Computed)
    }

    proxy_config block "list" (Optional) {
      secret_arn = string (Required)
      secret_version = string (Required)
    }

    root_volume block "list" (Optional) {
      iops = number (Optional, Computed)
      kms_key_arn = string (Optional)
      size_gib = number (Optional, Computed)
      throughput = number (Optional, Computed)
      volume_type = string (Optional, Computed)
    }

    ssh_config block "list" (Optional) {
      ec2_key_pair = string (Required)
    }
  }

  fleet block "list" (Required) {
    membership = string (Computed)
    project = string (Optional, Computed)
  }

  networking block "list" (Required) {
    pod_address_cidr_blocks = ['list', 'string'] (Required)
    service_address_cidr_blocks = ['list', 'string'] (Required)
    vpc_id = string (Required)
    per_node_pool_sg_rules_disabled = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
