resource "aws_launch_configuration" "name" {
  image_id = string (Required)
  instance_type = string (Required)
  arn = string (Computed)
  associate_public_ip_address = bool (Optional, Computed)
  ebs_optimized = bool (Optional, Computed)
  enable_monitoring = bool (Optional)
  iam_instance_profile = string (Optional)
  id = string (Optional, Computed)
  key_name = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  placement_tenancy = string (Optional)
  region = string (Optional, Computed)
  security_groups = ['set', 'string'] (Optional)
  spot_price = string (Optional)
  user_data = string (Optional)
  user_data_base64 = string (Optional)

  ebs_block_device block "set" (Optional) {
    device_name = string (Required)
    delete_on_termination = bool (Optional)
    encrypted = bool (Optional, Computed)
    iops = number (Optional, Computed)
    no_device = bool (Optional)
    snapshot_id = string (Optional, Computed)
    throughput = number (Optional, Computed)
    volume_size = number (Optional, Computed)
    volume_type = string (Optional, Computed)
  }

  ephemeral_block_device block "set" (Optional) {
    device_name = string (Required)
    no_device = bool (Optional)
    virtual_name = string (Optional)
  }

  metadata_options block "list" (Optional) {
    http_endpoint = string (Optional, Computed)
    http_put_response_hop_limit = number (Optional, Computed)
    http_tokens = string (Optional, Computed)
  }

  root_block_device block "list" (Optional) {
    delete_on_termination = bool (Optional)
    encrypted = bool (Optional, Computed)
    iops = number (Optional, Computed)
    throughput = number (Optional, Computed)
    volume_size = number (Optional, Computed)
    volume_type = string (Optional, Computed)
  }
}
