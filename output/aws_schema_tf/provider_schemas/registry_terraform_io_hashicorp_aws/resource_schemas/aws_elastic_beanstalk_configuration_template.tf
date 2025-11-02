resource "aws_elastic_beanstalk_configuration_template" "name" {
  application = string (Required)
  name = string (Required)
  description = string (Optional)
  environment_id = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  solution_stack_name = string (Optional)

  setting block "set" (Optional) {
    name = string (Required)
    namespace = string (Required)
    value = string (Required)
    resource = string (Optional)
  }
}
