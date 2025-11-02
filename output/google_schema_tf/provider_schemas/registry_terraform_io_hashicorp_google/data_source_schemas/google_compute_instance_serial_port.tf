data "google_compute_instance_serial_port" "name" {
  instance = string (Required)
  port = number (Required)
  contents = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  zone = string (Optional, Computed)
}
