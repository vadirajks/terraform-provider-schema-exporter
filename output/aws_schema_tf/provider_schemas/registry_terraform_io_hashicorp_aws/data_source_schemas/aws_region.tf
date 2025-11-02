data "aws_region" "name" {
  description = string (Computed)
  endpoint = string (Optional, Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)
}
