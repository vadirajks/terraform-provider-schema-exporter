resource "aws_guardduty_detector" "name" {
  account_id = string (Computed)
  arn = string (Computed)
  enable = bool (Optional)
  finding_publishing_frequency = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  datasources block "list" (Optional) {

    kubernetes block "list" (Optional) {

      audit_logs block "list" (Required) {
        enable = bool (Required)
      }
    }

    malware_protection block "list" (Optional) {

      scan_ec2_instance_with_findings block "list" (Required) {

        ebs_volumes block "list" (Required) {
          enable = bool (Required)
        }
      }
    }

    s3_logs block "list" (Optional) {
      enable = bool (Required)
    }
  }
}
