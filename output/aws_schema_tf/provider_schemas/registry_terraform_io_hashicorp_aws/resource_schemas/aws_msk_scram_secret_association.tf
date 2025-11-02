resource "aws_msk_scram_secret_association" "name" {
  cluster_arn = string (Required)
  secret_arn_list = ['set', 'string'] (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
