resource "aws_glue_resource_policy" "name" {
  policy = string (Required)
  enable_hybrid = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
