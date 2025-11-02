data "aws_dx_router_configuration" "name" {
  router_type_identifier = string (Required)
  virtual_interface_id = string (Required)
  customer_router_config = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  router = ['list', ['object', {'platform': 'string', 'router_type_identifier': 'string', 'software': 'string', 'vendor': 'string', 'xslt_template_name': 'string', 'xslt_template_name_for_mac_sec': 'string'}]] (Computed)
  virtual_interface_name = string (Computed)
}
