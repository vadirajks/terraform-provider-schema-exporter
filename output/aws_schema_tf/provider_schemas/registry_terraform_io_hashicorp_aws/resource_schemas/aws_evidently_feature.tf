resource "aws_evidently_feature" "name" {
  name = string (Required)
  project = string (Required)
  arn = string (Computed)
  created_time = string (Computed)
  default_variation = string (Optional, Computed)
  description = string (Optional)
  entity_overrides = ['map', 'string'] (Optional)
  evaluation_rules = ['set', ['object', {'name': 'string', 'type': 'string'}]] (Computed)
  evaluation_strategy = string (Optional, Computed)
  id = string (Optional, Computed)
  last_updated_time = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  value_type = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  variations block "set" (Required) {
    name = string (Required)

    value block "list" (Required) {
      bool_value = string (Optional)
      double_value = string (Optional)
      long_value = string (Optional)
      string_value = string (Optional)
    }
  }
}
