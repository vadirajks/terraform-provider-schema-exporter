resource "google_logging_billing_account_exclusion" "name" {
  billing_account = string (Required)
  filter = string (Required)
  name = string (Required)
  description = string (Optional)
  disabled = bool (Optional)
  id = string (Optional, Computed)
}
