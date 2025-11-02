data "aws_route53profiles_profiles" "name" {
  profiles = ['list', ['object', {'arn': 'string', 'id': 'string', 'name': 'string', 'share_status': 'string'}]] (Computed)
  region = string (Optional, Computed)
}
