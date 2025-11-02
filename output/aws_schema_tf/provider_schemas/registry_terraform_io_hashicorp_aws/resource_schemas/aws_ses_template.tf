resource "aws_ses_template" "name" {
  name = string (Required)
  arn = string (Computed)
  html = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  subject = string (Optional)
  text = string (Optional)
}
