data "google_datastream_static_ips" "name" {
  location = string (Required)
  id = string (Optional, Computed)
  project = string (Optional)
  static_ips = ['list', 'string'] (Computed)
}
