resource "aws_msk_single_scram_secret_association" "name" {
  cluster_arn = string (Required)
  secret_arn = string (Required)
  id = string (Computed)
  region = string (Optional, Computed)
}
