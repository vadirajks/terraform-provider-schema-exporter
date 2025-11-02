resource "azurerm_monitor_action_rule_action_group" "name" {
  action_group_id = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  condition block "list"  (Optional){

    alert_context block "list"  (Optional){
      operator = string (Required)
      values = ['set', 'string'] (Required)
    }

    alert_rule_id block "list"  (Optional){
      operator = string (Required)
      values = ['set', 'string'] (Required)
    }

    description block "list"  (Optional){
      operator = string (Required)
      values = ['set', 'string'] (Required)
    }

    monitor block "list"  (Optional){
      operator = string (Required)
      values = ['set', 'string'] (Required)
    }

    monitor_service block "list"  (Optional){
      operator = string (Required)
      values = ['set', 'string'] (Required)
    }

    severity block "list"  (Optional){
      operator = string (Required)
      values = ['set', 'string'] (Required)
    }

    target_resource_type block "list"  (Optional){
      operator = string (Required)
      values = ['set', 'string'] (Required)
    }
  }

  scope block "list"  (Optional){
    resource_ids = ['set', 'string'] (Required)
    type = string (Required)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
