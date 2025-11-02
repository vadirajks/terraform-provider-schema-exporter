resource "aws_macie2_findings_filter" "name" {
  action = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  position = number (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  finding_criteria block "list" (Required) {

    criterion block "set" (Optional) {
      field = string (Required)
      eq = ['set', 'string'] (Optional)
      eq_exact_match = ['set', 'string'] (Optional)
      gt = string (Optional)
      gte = string (Optional)
      lt = string (Optional)
      lte = string (Optional)
      neq = ['set', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
