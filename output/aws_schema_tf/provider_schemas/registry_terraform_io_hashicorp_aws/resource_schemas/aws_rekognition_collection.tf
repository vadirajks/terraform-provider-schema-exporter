resource "aws_rekognition_collection" "name" {
  collection_id = string (Required)
  arn = string (Computed)
  face_model_version = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
