resource "aws_ami" "name" {
  name = string (Required)
  architecture = string (Optional)
  arn = string (Computed)
  boot_mode = string (Optional)
  deprecation_time = string (Optional)
  description = string (Optional)
  ena_support = bool (Optional)
  hypervisor = string (Computed)
  id = string (Optional, Computed)
  image_location = string (Optional, Computed)
  image_owner_alias = string (Computed)
  image_type = string (Computed)
  imds_support = string (Optional)
  kernel_id = string (Optional)
  last_launched_time = string (Computed)
  manage_ebs_snapshots = bool (Computed)
  owner_id = string (Computed)
  platform = string (Computed)
  platform_details = string (Computed)
  public = bool (Computed)
  ramdisk_id = string (Optional)
  region = string (Optional, Computed)
  root_device_name = string (Optional)
  root_snapshot_id = string (Computed)
  sriov_net_support = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  tpm_support = string (Optional)
  uefi_data = string (Optional)
  usage_operation = string (Computed)
  virtualization_type = string (Optional)

  ebs_block_device block "set" (Optional) {
    device_name = string (Required)
    delete_on_termination = bool (Optional)
    encrypted = bool (Optional)
    iops = number (Optional)
    outpost_arn = string (Optional)
    snapshot_id = string (Optional)
    throughput = number (Optional, Computed)
    volume_size = number (Optional, Computed)
    volume_type = string (Optional)
  }

  ephemeral_block_device block "set" (Optional) {
    device_name = string (Required)
    virtual_name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
