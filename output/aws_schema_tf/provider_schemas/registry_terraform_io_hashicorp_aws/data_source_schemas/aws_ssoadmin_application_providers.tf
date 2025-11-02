data "aws_ssoadmin_application_providers" "name" {
  application_providers = ['list', ['object', {'application_provider_arn': 'string', 'display_data': ['list', ['object', {'description': 'string', 'display_name': 'string', 'icon_url': 'string'}]], 'federation_protocol': 'string'}]] (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
}
