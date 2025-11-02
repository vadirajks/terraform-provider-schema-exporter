resource "aws_batch_scheduling_policy" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  fair_share_policy block "list" (Optional) {
    compute_reservation = number (Optional)
    share_decay_seconds = number (Optional)

    share_distribution block "set" (Optional) {
      share_identifier = string (Required)
      weight_factor = number (Optional)
    }
  }
}
