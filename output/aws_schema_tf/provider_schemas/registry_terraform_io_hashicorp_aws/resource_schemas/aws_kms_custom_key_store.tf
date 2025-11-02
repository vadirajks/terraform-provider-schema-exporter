resource "aws_kms_custom_key_store" "name" {
  custom_key_store_name = string (Required)
  cloud_hsm_cluster_id = string (Optional)
  custom_key_store_type = string (Optional, Computed)
  id = string (Optional, Computed)
  key_store_password = string (Optional)
  region = string (Optional, Computed)
  trust_anchor_certificate = string (Optional)
  xks_proxy_connectivity = string (Optional)
  xks_proxy_uri_endpoint = string (Optional)
  xks_proxy_uri_path = string (Optional)
  xks_proxy_vpc_endpoint_service_name = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  xks_proxy_authentication_credential block "list" (Optional) {
    access_key_id = string (Required)
    raw_secret_access_key = string (Required)
  }
}
