resource "azurerm_virtual_network_gateway" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku = string (Required)
  type = string (Required)
  active_active = bool (Optional, Computed)
  bgp_route_translation_for_nat_enabled = bool (Optional)
  default_local_network_gateway_id = string (Optional)
  dns_forwarding_enabled = bool (Optional)
  edge_zone = string (Optional)
  enable_bgp = bool (Optional, Computed)
  generation = string (Optional, Computed)
  id = string (Optional, Computed)
  ip_sec_replay_protection_enabled = bool (Optional)
  private_ip_address_enabled = bool (Optional)
  remote_vnet_traffic_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)
  virtual_wan_traffic_enabled = bool (Optional)
  vpn_type = string (Optional)

  bgp_settings block "list" (Optional) {
    asn = number (Optional)
    peer_weight = number (Optional)

    peering_addresses block "list" (Optional) {
      apipa_addresses = ['list', 'string'] (Optional)
      default_addresses = ['list', 'string'] (Computed)
      ip_configuration_name = string (Optional, Computed)
      tunnel_ip_addresses = ['list', 'string'] (Computed)
    }
  }

  custom_route block "list" (Optional) {
    address_prefixes = ['set', 'string'] (Optional)
  }

  ip_configuration block "list" (Required) {
    subnet_id = string (Required)
    name = string (Optional)
    private_ip_address_allocation = string (Optional)
    public_ip_address_id = string (Optional)
  }

  policy_group block "list" (Optional) {
    name = string (Required)
    is_default = bool (Optional)
    priority = number (Optional)

    policy_member block "list" (Required) {
      name = string (Required)
      type = string (Required)
      value = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  vpn_client_configuration block "list" (Optional) {
    address_space = ['list', 'string'] (Required)
    aad_audience = string (Optional)
    aad_issuer = string (Optional)
    aad_tenant = string (Optional)
    radius_server_address = string (Optional)
    radius_server_secret = string (Optional)
    vpn_auth_types = ['set', 'string'] (Optional, Computed)
    vpn_client_protocols = ['set', 'string'] (Optional, Computed)

    ipsec_policy block "list" (Optional) {
      dh_group = string (Required)
      ike_encryption = string (Required)
      ike_integrity = string (Required)
      ipsec_encryption = string (Required)
      ipsec_integrity = string (Required)
      pfs_group = string (Required)
      sa_data_size_in_kilobytes = number (Required)
      sa_lifetime_in_seconds = number (Required)
    }

    radius_server block "list" (Optional) {
      address = string (Required)
      score = number (Required)
      secret = string (Required)
    }

    revoked_certificate block "set" (Optional) {
      name = string (Required)
      thumbprint = string (Required)
    }

    root_certificate block "set" (Optional) {
      name = string (Required)
      public_cert_data = string (Required)
    }

    virtual_network_gateway_client_connection block "list" (Optional) {
      address_prefixes = ['list', 'string'] (Required)
      name = string (Required)
      policy_group_names = ['list', 'string'] (Required)
    }
  }
}
