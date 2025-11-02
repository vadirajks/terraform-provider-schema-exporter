data "google_compute_instance_guest_attributes" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  query_path = string (Optional)
  query_value = ['list', ['object', {'key': 'string', 'namespace': 'string', 'value': 'string'}]] (Computed)
  region = string (Optional, Computed)
  variable_key = string (Optional)
  variable_value = string (Computed)
  zone = string (Optional, Computed)
}
