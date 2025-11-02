resource "aws_dax_parameter_group" "name" {
  name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  parameters block "set" (Optional) {
    name = string (Required)
    value = string (Required)
  }
}
