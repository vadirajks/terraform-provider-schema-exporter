resource "google_bigtable_authorized_view" "name" {
  instance_name = string (Required)
  name = string (Required)
  table_name = string (Required)
  deletion_protection = string (Optional, Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  subset_view block "list" (Optional) {
    row_prefixes = ['set', 'string'] (Optional)

    family_subsets block "set" (Optional) {
      family_name = string (Required)
      qualifier_prefixes = ['set', 'string'] (Optional)
      qualifiers = ['set', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
