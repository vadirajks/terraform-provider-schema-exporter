data "aws_kms_secret" "name" {
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  secret block "set" (Required) {
    name = string (Required)
    payload = string (Required)
    context = ['map', 'string'] (Optional)
    grant_tokens = ['list', 'string'] (Optional)
  }
}
