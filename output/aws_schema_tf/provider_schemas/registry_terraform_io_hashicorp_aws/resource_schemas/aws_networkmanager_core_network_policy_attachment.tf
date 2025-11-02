resource "aws_networkmanager_core_network_policy_attachment" "name" {
  core_network_id = string (Required)
  policy_document = string (Required)
  id = string (Optional, Computed)
  state = string (Computed)

  timeouts block "single" (Optional) {
    update = string (Optional)
  }
}
