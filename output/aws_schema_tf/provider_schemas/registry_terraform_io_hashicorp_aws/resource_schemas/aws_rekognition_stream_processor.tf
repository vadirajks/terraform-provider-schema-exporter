resource "aws_rekognition_stream_processor" "name" {
  name = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  kms_key_id = string (Optional)
  region = string (Optional, Computed)
  stream_processor_arn = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  data_sharing_preference block "list" (Optional) {
    opt_in = bool (Required)
  }

  input block "list" (Optional) {

    kinesis_video_stream block "list" (Optional) {
      arn = string (Required)
    }
  }

  notification_channel block "list" (Optional) {
    sns_topic_arn = string (Optional)
  }

  output block "list" (Optional) {

    kinesis_data_stream block "list" (Optional) {
      arn = string (Optional)
    }

    s3_destination block "list" (Optional) {
      bucket = string (Optional)
      key_prefix = string (Optional)
    }
  }

  regions_of_interest block "list" (Optional) {

    bounding_box block "list" (Optional) {
      height = number (Optional)
      left = number (Optional)
      top = number (Optional)
      width = number (Optional)
    }

    polygon block "list" (Optional) {
      x = number (Optional)
      y = number (Optional)
    }
  }

  settings block "list" (Optional) {

    connected_home block "list" (Optional) {
      labels = ['list', 'string'] (Optional)
      min_confidence = number (Optional, Computed)
    }

    face_search block "list" (Optional) {
      collection_id = string (Required)
      face_match_threshold = number (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
