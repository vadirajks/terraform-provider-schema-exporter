resource "aws_opsworks_instance" "name" {
  layer_ids = ['list', 'string'] (Required)
  stack_id = string (Required)
  agent_version = string (Optional)
  ami_id = string (Optional, Computed)
  architecture = string (Optional)
  auto_scaling_type = string (Optional)
  availability_zone = string (Optional, Computed)
  created_at = string (Optional, Computed)
  delete_ebs = bool (Optional)
  delete_eip = bool (Optional)
  ebs_optimized = bool (Optional)
  ec2_instance_id = string (Computed)
  ecs_cluster_arn = string (Optional, Computed)
  elastic_ip = string (Optional, Computed)
  hostname = string (Optional, Computed)
  id = string (Optional, Computed)
  infrastructure_class = string (Optional, Computed)
  install_updates_on_boot = bool (Optional)
  instance_profile_arn = string (Optional, Computed)
  instance_type = string (Optional)
  last_service_error_id = string (Computed)
  os = string (Optional, Computed)
  platform = string (Computed)
  private_dns = string (Computed)
  private_ip = string (Computed)
  public_dns = string (Computed)
  public_ip = string (Computed)
  registered_by = string (Computed)
  reported_agent_version = string (Computed)
  reported_os_family = string (Computed)
  reported_os_name = string (Computed)
  reported_os_version = string (Computed)
  root_device_type = string (Optional, Computed)
  root_device_volume_id = string (Computed)
  security_group_ids = ['list', 'string'] (Optional, Computed)
  ssh_host_dsa_key_fingerprint = string (Computed)
  ssh_host_rsa_key_fingerprint = string (Computed)
  ssh_key_name = string (Optional, Computed)
  state = string (Optional)
  status = string (Optional, Computed)
  subnet_id = string (Optional, Computed)
  tenancy = string (Optional, Computed)
  virtualization_type = string (Optional, Computed)

  ebs_block_device block "set"  (Optional){
    device_name = string (Required)
    delete_on_termination = bool (Optional)
    iops = number (Optional, Computed)
    snapshot_id = string (Optional, Computed)
    volume_size = number (Optional, Computed)
    volume_type = string (Optional, Computed)
  }

  ephemeral_block_device block "set"  (Optional){
    device_name = string (Required)
    virtual_name = string (Required)
  }

  root_block_device block "set"  (Optional){
    delete_on_termination = bool (Optional)
    iops = number (Optional, Computed)
    volume_size = number (Optional, Computed)
    volume_type = string (Optional, Computed)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
