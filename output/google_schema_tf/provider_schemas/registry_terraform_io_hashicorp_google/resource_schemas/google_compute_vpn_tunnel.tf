resource "google_compute_vpn_tunnel" "name" {
  name = string (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  detailed_status = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  ike_version = number (Optional)
  label_fingerprint = string (Computed)
  labels = ['map', 'string'] (Optional)
  local_traffic_selector = ['set', 'string'] (Optional, Computed)
  peer_external_gateway = string (Optional)
  peer_external_gateway_interface = number (Optional)
  peer_gcp_gateway = string (Optional)
  peer_ip = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  remote_traffic_selector = ['set', 'string'] (Optional, Computed)
  router = string (Optional)
  self_link = string (Computed)
  shared_secret = string (Optional)
  shared_secret_hash = string (Computed)
  shared_secret_wo = string (Optional)
  shared_secret_wo_version = string (Optional)
  target_vpn_gateway = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  tunnel_id = string (Computed)
  vpn_gateway = string (Optional)
  vpn_gateway_interface = number (Optional)

  cipher_suite block "list" (Optional) {

    phase1 block "list" (Optional) {
      dh = ['set', 'string'] (Optional)
      encryption = ['set', 'string'] (Optional)
      integrity = ['set', 'string'] (Optional)
      prf = ['set', 'string'] (Optional)
    }

    phase2 block "list" (Optional) {
      encryption = ['set', 'string'] (Optional)
      integrity = ['set', 'string'] (Optional)
      pfs = ['set', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
