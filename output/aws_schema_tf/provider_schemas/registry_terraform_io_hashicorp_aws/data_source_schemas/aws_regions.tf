data "aws_regions" "name" {
  all_regions = bool (Optional)
  id = string (Optional, Computed)
  names = ['set', 'string'] (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }
}
