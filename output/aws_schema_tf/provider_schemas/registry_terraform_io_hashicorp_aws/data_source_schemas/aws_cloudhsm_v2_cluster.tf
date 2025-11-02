data "aws_cloudhsm_v2_cluster" "name" {
  cluster_id = string (Required)
  cluster_certificates = ['list', ['object', {'aws_hardware_certificate': 'string', 'cluster_certificate': 'string', 'cluster_csr': 'string', 'hsm_certificate': 'string', 'manufacturer_hardware_certificate': 'string'}]] (Computed)
  cluster_state = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  security_group_id = string (Computed)
  subnet_ids = ['set', 'string'] (Computed)
  vpc_id = string (Computed)
}
