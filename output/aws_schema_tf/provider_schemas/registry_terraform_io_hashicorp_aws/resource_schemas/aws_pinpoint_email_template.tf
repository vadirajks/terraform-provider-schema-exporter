resource "aws_pinpoint_email_template" "name" {
  template_name = string (Required)
  arn = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  email_template block "list" (Optional) {
    default_substitutions = string (Optional)
    description = string (Optional)
    html_part = string (Optional)
    recommender_id = string (Optional)
    subject = string (Optional)
    text_part = string (Optional)

    header block "list" (Optional) {
      name = string (Optional)
      value = string (Optional)
    }
  }
}
