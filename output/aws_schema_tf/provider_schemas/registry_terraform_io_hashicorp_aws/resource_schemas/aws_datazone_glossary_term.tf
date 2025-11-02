resource "aws_datazone_glossary_term" "name" {
  glossary_identifier = string (Required)
  name = string (Required)
  created_at = string (Computed)
  created_by = string (Computed)
  domain_identifier = string (Optional)
  id = string (Computed)
  long_description = string (Optional)
  region = string (Optional, Computed)
  short_description = string (Optional)
  status = string (Optional)

  term_relations block "list" (Optional) {
    classifies = ['set', 'string'] (Optional)
    is_a = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
