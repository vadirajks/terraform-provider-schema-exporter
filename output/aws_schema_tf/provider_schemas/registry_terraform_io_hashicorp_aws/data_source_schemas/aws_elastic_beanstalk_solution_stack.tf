data "aws_elastic_beanstalk_solution_stack" "name" {
  name_regex = string (Required)
  id = string (Optional, Computed)
  most_recent = bool (Optional)
  name = string (Computed)
  region = string (Optional, Computed)
}
