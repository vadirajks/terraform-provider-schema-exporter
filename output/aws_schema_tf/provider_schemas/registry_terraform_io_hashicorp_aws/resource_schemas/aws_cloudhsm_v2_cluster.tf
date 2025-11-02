resource "aws_cloudhsm_v2_cluster" "name" {
  hsm_type = string (Required)
  subnet_ids = ['set', 'string'] (Required)
  cluster_certificates = ['list', ['object', {'aws_hardware_certificate': 'string', 'cluster_certificate': 'string', 'cluster_csr': 'string', 'hsm_certificate': 'string', 'manufacturer_hardware_certificate': 'string'}]] (Computed)
  cluster_id = string (Computed)
  cluster_state = string (Computed)
  id = string (Optional, Computed)
  mode = string (Optional, Computed)
  region = string (Optional, Computed)
  security_group_id = string (Computed)
  source_backup_identifier = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
