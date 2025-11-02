data "aws_elastic_beanstalk_hosted_zone" "name" {
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
