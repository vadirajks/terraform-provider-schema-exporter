data "aws_kms_custom_key_store" "name" {
  cloud_hsm_cluster_id = string (Computed)
  connection_state = string (Computed)
  creation_date = string (Computed)
  custom_key_store_id = string (Optional, Computed)
  custom_key_store_name = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  trust_anchor_certificate = string (Computed)
}
