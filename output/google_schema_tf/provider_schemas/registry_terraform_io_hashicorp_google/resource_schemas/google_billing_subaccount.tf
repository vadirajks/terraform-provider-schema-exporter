resource "google_billing_subaccount" "name" {
  display_name = string (Required)
  master_billing_account = string (Required)
  billing_account_id = string (Computed)
  deletion_policy = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  open = bool (Computed)
}
