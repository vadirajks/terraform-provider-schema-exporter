resource "aws_shield_proactive_engagement" "name" {
  enabled = bool (Required)
  id = string (Computed)

  emergency_contact block "list" (Optional) {
    email_address = string (Required)
    contact_notes = string (Optional)
    phone_number = string (Optional)
  }
}
