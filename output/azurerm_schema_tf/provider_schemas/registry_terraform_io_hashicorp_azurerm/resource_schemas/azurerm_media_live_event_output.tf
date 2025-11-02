resource "azurerm_media_live_event_output" "name" {
  archive_window_duration = string (Required)
  asset_name = string (Required)
  live_event_id = string (Required)
  name = string (Required)
  description = string (Optional)
  hls_fragments_per_ts_segment = number (Optional)
  id = string (Optional, Computed)
  manifest_name = string (Optional, Computed)
  output_snap_time_in_seconds = number (Optional)
  rewind_window_duration = string (Optional)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
