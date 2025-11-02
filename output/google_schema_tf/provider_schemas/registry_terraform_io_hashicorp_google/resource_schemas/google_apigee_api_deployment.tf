resource "google_apigee_api_deployment" "name" {
  environment = string (Required)
  org_id = string (Required)
  proxy_id = string (Required)
  revision = string (Required)
  id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
