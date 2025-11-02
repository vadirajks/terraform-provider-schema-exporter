data "aws_imagebuilder_distribution_configurations" "name" {
  arns = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  names = ['set', 'string'] (Computed)
  region = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }
}
