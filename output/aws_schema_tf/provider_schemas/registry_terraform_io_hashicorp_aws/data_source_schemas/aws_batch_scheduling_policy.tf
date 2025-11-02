data "aws_batch_scheduling_policy" "name" {
  arn = string (Required)
  fair_share_policy = ['list', ['object', {'compute_reservation': 'number', 'share_decay_seconds': 'number', 'share_distribution': ['set', ['object', {'share_identifier': 'string', 'weight_factor': 'number'}]]}]] (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
