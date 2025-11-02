data "aws_imagebuilder_container_recipes" "name" {
  arns = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  names = ['set', 'string'] (Computed)
  owner = string (Optional)
  region = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }
}
