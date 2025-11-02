resource "aws_dax_subnet_group" "name" {
  name = string (Required)
  subnet_ids = ['set', 'string'] (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  vpc_id = string (Computed)
}
