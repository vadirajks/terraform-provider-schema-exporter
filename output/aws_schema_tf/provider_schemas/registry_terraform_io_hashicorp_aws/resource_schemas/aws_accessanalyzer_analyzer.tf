resource "aws_accessanalyzer_analyzer" "name" {
  analyzer_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  type = string (Optional)

  configuration block "list" (Optional) {

    internal_access block "list" (Optional) {

      analysis_rule block "list" (Optional) {

        inclusion block "list" (Optional) {
          account_ids = ['list', 'string'] (Optional)
          resource_arns = ['list', 'string'] (Optional)
          resource_types = ['list', 'string'] (Optional)
        }
      }
    }

    unused_access block "list" (Optional) {
      unused_access_age = number (Optional)

      analysis_rule block "list" (Optional) {

        exclusion block "list" (Optional) {
          account_ids = ['list', 'string'] (Optional)
          resource_tags = ['list', ['map', 'string']] (Optional)
        }
      }
    }
  }
}
