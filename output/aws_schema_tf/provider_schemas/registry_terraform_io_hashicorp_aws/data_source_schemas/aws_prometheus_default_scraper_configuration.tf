data "aws_prometheus_default_scraper_configuration" "name" {
  configuration = string (Computed)
  region = string (Optional, Computed)
}
