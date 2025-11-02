data "aws_eks_cluster_versions" "name" {
  cluster_type = string (Optional)
  cluster_versions = ['list', ['object', {'cluster_type': 'string', 'cluster_version': 'string', 'default_platform_version': 'string', 'default_version': 'bool', 'end_of_extended_support_date': 'string', 'end_of_standard_support_date': 'string', 'kubernetes_patch_version': 'string', 'release_date': 'string', 'version_status': 'string'}]] (Computed)
  cluster_versions_only = ['list', 'string'] (Optional)
  default_only = bool (Optional)
  include_all = bool (Optional)
  region = string (Optional, Computed)
  version_status = string (Optional)
}
