resource "aws_eks_node_group" "name" {
  cluster_name = string (Required)
  node_role_arn = string (Required)
  subnet_ids = ['set', 'string'] (Required)
  ami_type = string (Optional, Computed)
  arn = string (Computed)
  capacity_type = string (Optional, Computed)
  disk_size = number (Optional, Computed)
  force_update_version = bool (Optional)
  id = string (Optional, Computed)
  instance_types = ['list', 'string'] (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  node_group_name = string (Optional, Computed)
  node_group_name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  release_version = string (Optional, Computed)
  resources = ['list', ['object', {'autoscaling_groups': ['list', ['object', {'name': 'string'}]], 'remote_access_security_group_id': 'string'}]] (Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  version = string (Optional, Computed)

  launch_template block "list" (Optional) {
    version = string (Required)
    id = string (Optional, Computed)
    name = string (Optional, Computed)
  }

  node_repair_config block "list" (Optional) {
    enabled = bool (Optional)
  }

  remote_access block "list" (Optional) {
    ec2_ssh_key = string (Optional)
    source_security_group_ids = ['set', 'string'] (Optional)
  }

  scaling_config block "list" (Required) {
    desired_size = number (Required)
    max_size = number (Required)
    min_size = number (Required)
  }

  taint block "set" (Optional) {
    effect = string (Required)
    key = string (Required)
    value = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  update_config block "list" (Optional) {
    max_unavailable = number (Optional)
    max_unavailable_percentage = number (Optional)
  }
}
