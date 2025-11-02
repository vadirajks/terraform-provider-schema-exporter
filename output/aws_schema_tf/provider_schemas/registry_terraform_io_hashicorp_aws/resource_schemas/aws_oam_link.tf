resource "aws_oam_link" "name" {
  label_template = string (Required)
  resource_types = ['set', 'string'] (Required)
  sink_identifier = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  label = string (Computed)
  link_id = string (Computed)
  region = string (Optional, Computed)
  sink_arn = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  link_configuration block "list" (Optional) {

    log_group_configuration block "list" (Optional) {
      filter = string (Required)
    }

    metric_configuration block "list" (Optional) {
      filter = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
