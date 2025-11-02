resource "aws_config_conformance_pack" "name" {
  name = string (Required)
  arn = string (Computed)
  delivery_s3_bucket = string (Optional)
  delivery_s3_key_prefix = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  template_body = string (Optional)
  template_s3_uri = string (Optional)

  input_parameter block "set" (Optional) {
    parameter_name = string (Required)
    parameter_value = string (Required)
  }
}
