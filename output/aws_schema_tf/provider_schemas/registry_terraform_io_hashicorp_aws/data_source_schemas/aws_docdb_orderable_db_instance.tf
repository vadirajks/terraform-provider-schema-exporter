data "aws_docdb_orderable_db_instance" "name" {
  availability_zones = ['list', 'string'] (Computed)
  engine = string (Optional)
  engine_version = string (Optional, Computed)
  id = string (Optional, Computed)
  instance_class = string (Optional, Computed)
  license_model = string (Optional)
  preferred_instance_classes = ['list', 'string'] (Optional)
  region = string (Optional, Computed)
  vpc = bool (Optional, Computed)
}
