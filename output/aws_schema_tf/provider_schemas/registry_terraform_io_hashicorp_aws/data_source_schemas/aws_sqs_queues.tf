data "aws_sqs_queues" "name" {
  id = string (Optional, Computed)
  queue_name_prefix = string (Optional)
  queue_urls = ['set', 'string'] (Computed)
  region = string (Optional, Computed)
}
