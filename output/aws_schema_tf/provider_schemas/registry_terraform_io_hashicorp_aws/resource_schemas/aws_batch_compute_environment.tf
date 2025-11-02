resource "aws_batch_compute_environment" "name" {
  type = string (Required)
  arn = string (Computed)
  ecs_cluster_arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  service_role = string (Optional, Computed)
  state = string (Optional)
  status = string (Computed)
  status_reason = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  compute_resources block "list" (Optional) {
    max_vcpus = number (Required)
    subnets = ['set', 'string'] (Required)
    type = string (Required)
    allocation_strategy = string (Optional)
    bid_percentage = number (Optional)
    desired_vcpus = number (Optional, Computed)
    ec2_key_pair = string (Optional)
    image_id = string (Optional)
    instance_role = string (Optional)
    instance_type = ['set', 'string'] (Optional)
    min_vcpus = number (Optional)
    placement_group = string (Optional)
    security_group_ids = ['set', 'string'] (Optional)
    spot_iam_fleet_role = string (Optional)
    tags = ['map', 'string'] (Optional)

    ec2_configuration block "list" (Optional) {
      image_id_override = string (Optional, Computed)
      image_kubernetes_version = string (Optional)
      image_type = string (Optional)
    }

    launch_template block "list" (Optional) {
      launch_template_id = string (Optional)
      launch_template_name = string (Optional)
      version = string (Optional, Computed)
    }
  }

  eks_configuration block "list" (Optional) {
    eks_cluster_arn = string (Required)
    kubernetes_namespace = string (Required)
  }

  update_policy block "list" (Optional) {
    job_execution_timeout_minutes = number (Optional, Computed)
    terminate_jobs_on_update = bool (Optional, Computed)
  }
}
