resource "aws_prometheus_scraper" "name" {
  scrape_configuration = string (Required)
  alias = string (Optional)
  arn = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  role_arn = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  destination block "list" (Optional) {

    amp block "list" (Optional) {
      workspace_arn = string (Required)
    }
  }

  role_configuration block "list" (Optional) {
    source_role_arn = string (Optional)
    target_role_arn = string (Optional)
  }

  source block "list" (Optional) {

    eks block "list" (Optional) {
      cluster_arn = string (Required)
      subnet_ids = ['set', 'string'] (Required)
      security_group_ids = ['set', 'string'] (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
