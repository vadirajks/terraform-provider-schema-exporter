resource "aws_cloudhsm_v2_hsm" "name" {
  cluster_id = string (Required)
  availability_zone = string (Optional, Computed)
  hsm_eni_id = string (Computed)
  hsm_id = string (Computed)
  hsm_state = string (Computed)
  id = string (Optional, Computed)
  ip_address = string (Optional, Computed)
  region = string (Optional, Computed)
  subnet_id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
