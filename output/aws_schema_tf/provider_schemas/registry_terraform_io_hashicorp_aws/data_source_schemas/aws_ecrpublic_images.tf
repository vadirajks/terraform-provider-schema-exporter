data "aws_ecrpublic_images" "name" {
  repository_name = string (Required)
  images = ['list', ['object', {'artifact_media_type': 'string', 'image_digest': 'string', 'image_manifest_media_type': 'string', 'image_pushed_at': 'string', 'image_size_in_bytes': 'number', 'image_tags': ['list', 'string'], 'registry_id': 'string', 'repository_name': 'string'}]] (Computed)
  region = string (Optional, Computed)
  registry_id = string (Optional)

  image_ids block "list" (Optional) {
    image_digest = string (Optional)
    image_tag = string (Optional)
  }
}
