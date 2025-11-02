data "google_sql_tiers" "name" {
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  tiers = ['list', ['object', {'disk_quota': 'number', 'ram': 'number', 'region': ['list', 'string'], 'tier': 'string'}]] (Computed)
}
