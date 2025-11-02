resource "google_essential_contacts_contact" "name" {
  email = string (Required)
  language_tag = string (Required)
  notification_category_subscriptions = ['list', 'string'] (Required)
  parent = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
