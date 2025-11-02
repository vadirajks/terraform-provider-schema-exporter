resource "aws_msk_serverless_cluster" "name" {
  cluster_name = string (Required)
  arn = string (Computed)
  bootstrap_brokers_sasl_iam = string (Computed)
  cluster_uuid = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  client_authentication block "list" (Required) {

    sasl block "list" (Required) {

      iam block "list" (Required) {
        enabled = bool (Required)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }

  vpc_config block "list" (Required) {
    subnet_ids = ['set', 'string'] (Required)
    security_group_ids = ['set', 'string'] (Optional, Computed)
  }
}
