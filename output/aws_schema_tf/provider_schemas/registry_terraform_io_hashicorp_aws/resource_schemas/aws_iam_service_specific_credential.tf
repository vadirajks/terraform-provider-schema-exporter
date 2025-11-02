resource "aws_iam_service_specific_credential" "name" {
  service_name = string (Required)
  user_name = string (Required)
  create_date = string (Computed)
  credential_age_days = number (Optional)
  expiration_date = string (Computed)
  id = string (Optional, Computed)
  service_credential_alias = string (Computed)
  service_credential_secret = string (Computed)
  service_password = string (Computed)
  service_specific_credential_id = string (Computed)
  service_user_name = string (Computed)
  status = string (Optional)
}
