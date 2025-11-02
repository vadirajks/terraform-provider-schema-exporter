resource "aws_iam_virtual_mfa_device" "name" {
  virtual_mfa_device_name = string (Required)
  arn = string (Computed)
  base_32_string_seed = string (Computed)
  enable_date = string (Computed)
  id = string (Optional, Computed)
  path = string (Optional)
  qr_code_png = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  user_name = string (Computed)
}
