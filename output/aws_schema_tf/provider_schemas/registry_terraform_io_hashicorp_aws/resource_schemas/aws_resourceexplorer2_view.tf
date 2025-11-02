resource "aws_resourceexplorer2_view" "name" {
  name = string (Required)
  arn = string (Computed)
  default_view = bool (Optional, Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  scope = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  filters block "list" (Optional) {
    filter_string = string (Required)
  }

  included_property block "list" (Optional) {
    name = string (Required)
  }
}
