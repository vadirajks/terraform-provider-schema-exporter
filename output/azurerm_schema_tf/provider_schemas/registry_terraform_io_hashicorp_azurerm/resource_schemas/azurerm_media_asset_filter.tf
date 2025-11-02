resource "azurerm_media_asset_filter" "name" {
  asset_id = string (Required)
  name = string (Required)
  first_quality_bitrate = number (Optional)
  id = string (Optional, Computed)

  presentation_time_range block "list"  (Optional){
    end_in_units = number (Optional)
    force_end = bool (Optional)
    live_backoff_in_units = number (Optional)
    presentation_window_in_units = number (Optional)
    start_in_units = number (Optional)
    unit_timescale_in_miliseconds = number (Optional)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  track_selection block "list"  (Optional){

    condition block "list"  (Required){
      operation = string (Optional)
      property = string (Optional)
      value = string (Optional)
    }
  }
}
