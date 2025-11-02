data "aws_oam_link" "name" {
  link_identifier = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  label = string (Computed)
  label_template = string (Computed)
  link_configuration = ['list', ['object', {'log_group_configuration': ['list', ['object', {'filter': 'string'}]], 'metric_configuration': ['list', ['object', {'filter': 'string'}]]}]] (Computed)
  link_id = string (Computed)
  region = string (Optional, Computed)
  resource_types = ['set', 'string'] (Computed)
  sink_arn = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
