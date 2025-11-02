resource "aws_account_alternate_contact" "name" {
  alternate_contact_type = string (Required)
  email_address = string (Required)
  name = string (Required)
  phone_number = string (Required)
  title = string (Required)
  account_id = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
