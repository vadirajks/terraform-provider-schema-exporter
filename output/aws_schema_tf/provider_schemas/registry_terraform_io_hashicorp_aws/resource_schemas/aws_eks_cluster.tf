resource "aws_eks_cluster" "name" {
  name = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  bootstrap_self_managed_addons = bool (Optional)
  certificate_authority = ['list', ['object', {'data': 'string'}]] (Computed)
  cluster_id = string (Computed)
  created_at = string (Computed)
  deletion_protection = bool (Optional, Computed)
  enabled_cluster_log_types = ['set', 'string'] (Optional)
  endpoint = string (Computed)
  force_update_version = bool (Optional)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'oidc': ['list', ['object', {'issuer': 'string'}]]}]] (Computed)
  platform_version = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  version = string (Optional, Computed)

  access_config block "list" (Optional) {
    authentication_mode = string (Optional, Computed)
    bootstrap_cluster_creator_admin_permissions = bool (Optional)
  }

  compute_config block "list" (Optional) {
    enabled = bool (Optional, Computed)
    node_pools = ['set', 'string'] (Optional)
    node_role_arn = string (Optional)
  }

  encryption_config block "list" (Optional) {
    resources = ['set', 'string'] (Required)

    provider block "list" (Required) {
      key_arn = string (Required)
    }
  }

  kubernetes_network_config block "list" (Optional) {
    ip_family = string (Optional, Computed)
    service_ipv4_cidr = string (Optional, Computed)
    service_ipv6_cidr = string (Computed)

    elastic_load_balancing block "list" (Optional) {
      enabled = bool (Optional, Computed)
    }
  }

  outpost_config block "list" (Optional) {
    control_plane_instance_type = string (Required)
    outpost_arns = ['set', 'string'] (Required)

    control_plane_placement block "list" (Optional) {
      group_name = string (Required)
    }
  }

  remote_network_config block "list" (Optional) {

    remote_node_networks block "list" (Required) {
      cidrs = ['set', 'string'] (Optional)
    }

    remote_pod_networks block "list" (Optional) {
      cidrs = ['set', 'string'] (Optional)
    }
  }

  storage_config block "list" (Optional) {

    block_storage block "list" (Optional) {
      enabled = bool (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  upgrade_policy block "list" (Optional) {
    support_type = string (Optional, Computed)
  }

  vpc_config block "list" (Required) {
    subnet_ids = ['set', 'string'] (Required)
    cluster_security_group_id = string (Computed)
    endpoint_private_access = bool (Optional)
    endpoint_public_access = bool (Optional)
    public_access_cidrs = ['set', 'string'] (Optional, Computed)
    security_group_ids = ['set', 'string'] (Optional)
    vpc_id = string (Computed)
  }

  zonal_shift_config block "list" (Optional) {
    enabled = bool (Optional)
  }
}
