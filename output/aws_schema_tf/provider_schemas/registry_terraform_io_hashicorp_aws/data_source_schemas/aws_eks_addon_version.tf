data "aws_eks_addon_version" "name" {
  addon_name = string (Required)
  kubernetes_version = string (Required)
  id = string (Optional, Computed)
  most_recent = bool (Optional)
  region = string (Optional, Computed)
  version = string (Computed)
}
