resource "aws_opsworks_application" "name" {
  name = string (Required)
  stack_id = string (Required)
  type = string (Required)
  auto_bundle_on_deploy = string (Optional)
  aws_flow_ruby_settings = string (Optional)
  data_source_arn = string (Optional)
  data_source_database_name = string (Optional)
  data_source_type = string (Optional)
  description = string (Optional)
  document_root = string (Optional)
  domains = ['list', 'string'] (Optional)
  enable_ssl = bool (Optional)
  id = string (Optional, Computed)
  rails_env = string (Optional)
  short_name = string (Optional, Computed)

  app_source block "list"  (Optional){
    type = string (Required)
    password = string (Optional)
    revision = string (Optional)
    ssh_key = string (Optional)
    url = string (Optional)
    username = string (Optional)
  }

  environment block "set"  (Optional){
    key = string (Required)
    value = string (Required)
    secure = bool (Optional)
  }

  ssl_configuration block "list"  (Optional){
    certificate = string (Required)
    private_key = string (Required)
    chain = string (Optional)
  }
}
