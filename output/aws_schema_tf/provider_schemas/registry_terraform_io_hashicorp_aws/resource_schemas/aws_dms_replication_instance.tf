resource "aws_dms_replication_instance" "name" {
  replication_instance_class = string (Required)
  replication_instance_id = string (Required)
  allocated_storage = number (Optional, Computed)
  allow_major_version_upgrade = bool (Optional)
  apply_immediately = bool (Optional)
  auto_minor_version_upgrade = bool (Optional, Computed)
  availability_zone = string (Optional, Computed)
  dns_name_servers = string (Optional)
  engine_version = string (Optional, Computed)
  id = string (Optional, Computed)
  kms_key_arn = string (Optional, Computed)
  multi_az = bool (Optional, Computed)
  network_type = string (Optional, Computed)
  preferred_maintenance_window = string (Optional, Computed)
  publicly_accessible = bool (Optional, Computed)
  region = string (Optional, Computed)
  replication_instance_arn = string (Computed)
  replication_instance_private_ips = ['list', 'string'] (Computed)
  replication_instance_public_ips = ['list', 'string'] (Computed)
  replication_subnet_group_id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_security_group_ids = ['set', 'string'] (Optional, Computed)

  kerberos_authentication_settings block "list" (Optional) {
    key_cache_secret_iam_arn = string (Required)
    key_cache_secret_id = string (Required)
    krb5_file_contents = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
