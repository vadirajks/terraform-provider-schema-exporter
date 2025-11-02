resource "google_container_aws_node_pool" "name" {
  cluster = string (Required)
  location = string (Required)
  name = string (Required)
  subnet_id = string (Required)
  version = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  effective_annotations = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  state = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  autoscaling block "list" (Required) {
    max_node_count = number (Required)
    min_node_count = number (Required)
  }

  config block "list" (Required) {
    iam_instance_profile = string (Required)
    instance_type = string (Optional, Computed)
    labels = ['map', 'string'] (Optional)
    security_group_ids = ['list', 'string'] (Optional)
    tags = ['map', 'string'] (Optional)

    autoscaling_metrics_collection block "list" (Optional) {
      granularity = string (Required)
      metrics = ['list', 'string'] (Optional)
    }

    config_encryption block "list" (Required) {
      kms_key_arn = string (Required)
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

    taints block "list" (Optional) {
      effect = string (Required)
      key = string (Required)
      value = string (Required)
    }
  }

  kubelet_config block "list" (Optional) {
    cpu_cfs_quota = bool (Optional, Computed)
    cpu_cfs_quota_period = string (Optional)
    cpu_manager_policy = string (Optional, Computed)
    pod_pids_limit = number (Optional)
  }

  management block "list" (Optional) {
    auto_repair = bool (Optional, Computed)
  }

  max_pods_constraint block "list" (Required) {
    max_pods_per_node = number (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  update_settings block "list" (Optional) {

    surge_settings block "list" (Optional) {
      max_surge = number (Optional, Computed)
      max_unavailable = number (Optional, Computed)
    }
  }
}
