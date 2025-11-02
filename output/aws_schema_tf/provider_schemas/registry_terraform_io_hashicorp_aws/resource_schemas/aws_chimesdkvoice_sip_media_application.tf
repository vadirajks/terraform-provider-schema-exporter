resource "aws_chimesdkvoice_sip_media_application" "name" {
  aws_region = string (Required)
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  endpoints block "list" (Required) {
    lambda_arn = string (Required)
  }
}
