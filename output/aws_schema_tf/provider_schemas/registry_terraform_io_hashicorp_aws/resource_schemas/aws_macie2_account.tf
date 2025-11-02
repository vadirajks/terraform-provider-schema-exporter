resource "aws_macie2_account" "name" {
  created_at = string (Computed)
  finding_publishing_frequency = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  service_role = string (Computed)
  status = string (Optional, Computed)
  updated_at = string (Computed)
}
