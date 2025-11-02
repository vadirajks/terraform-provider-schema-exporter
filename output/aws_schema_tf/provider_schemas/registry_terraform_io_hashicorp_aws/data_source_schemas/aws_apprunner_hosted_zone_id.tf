data "aws_apprunner_hosted_zone_id" "name" {
  id = string (Computed)
  region = string (Optional, Computed)
}
