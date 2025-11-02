resource "aws_guardduty_organization_configuration" "name" {
  auto_enable_organization_members = string (Required)
  detector_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  datasources block "list" (Optional) {

    kubernetes block "list" (Optional) {

      audit_logs block "list" (Required) {
        enable = bool (Required)
      }
    }

    malware_protection block "list" (Optional) {

      scan_ec2_instance_with_findings block "list" (Required) {

        ebs_volumes block "list" (Required) {
          auto_enable = bool (Required)
        }
      }
    }

    s3_logs block "list" (Optional) {
      auto_enable = bool (Required)
    }
  }
}
