data "aws_fis_experiment_templates" "name" {
  ids = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
}
