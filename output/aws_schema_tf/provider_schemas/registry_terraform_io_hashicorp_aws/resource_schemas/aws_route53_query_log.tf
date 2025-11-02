resource "aws_route53_query_log" "name" {
  cloudwatch_log_group_arn = string (Required)
  zone_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
}
