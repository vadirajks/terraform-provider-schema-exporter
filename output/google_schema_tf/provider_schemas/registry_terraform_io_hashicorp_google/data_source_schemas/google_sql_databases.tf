data "google_sql_databases" "name" {
  instance = string (Required)
  databases = ['list', ['object', {'charset': 'string', 'collation': 'string', 'deletion_policy': 'string', 'instance': 'string', 'name': 'string', 'project': 'string', 'self_link': 'string'}]] (Computed)
  id = string (Optional, Computed)
  project = string (Optional)
}
