resource "aws_timestreaminfluxdb_db_cluster" "name" {
  allocated_storage = number (Required)
  bucket = string (Required)
  db_instance_type = string (Required)
  name = string (Required)
  organization = string (Required)
  password = string (Required)
  username = string (Required)
  vpc_security_group_ids = ['set', 'string'] (Required)
  vpc_subnet_ids = ['set', 'string'] (Required)
  arn = string (Computed)
  db_parameter_group_identifier = string (Optional)
  db_storage_type = string (Optional, Computed)
  deployment_type = string (Optional, Computed)
  endpoint = string (Computed)
  failover_mode = string (Optional, Computed)
  id = string (Computed)
  influx_auth_parameters_secret_arn = string (Computed)
  network_type = string (Optional, Computed)
  port = number (Optional, Computed)
  publicly_accessible = bool (Optional, Computed)
  reader_endpoint = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  log_delivery_configuration block "list" (Optional) {

    s3_configuration block "list" (Optional) {
      bucket_name = string (Required)
      enabled = bool (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
