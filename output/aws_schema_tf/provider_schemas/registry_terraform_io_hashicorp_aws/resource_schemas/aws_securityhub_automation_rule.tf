resource "aws_securityhub_automation_rule" "name" {
  description = string (Required)
  rule_name = string (Required)
  rule_order = number (Required)
  arn = string (Computed)
  id = string (Computed)
  is_terminal = bool (Optional, Computed)
  region = string (Optional, Computed)
  rule_status = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  actions block "set" (Optional) {
    type = string (Optional)

    finding_fields_update block "list" (Optional) {
      confidence = number (Optional)
      criticality = number (Optional)
      types = ['list', 'string'] (Optional)
      user_defined_fields = ['map', 'string'] (Optional)
      verification_state = string (Optional)

      note block "list" (Optional) {
        text = string (Required)
        updated_by = string (Required)
      }

      related_findings block "set" (Optional) {
        id = string (Required)
        product_arn = string (Required)
      }

      severity block "list" (Optional) {
        label = string (Optional, Computed)
        product = number (Optional)
      }

      workflow block "list" (Optional) {
        status = string (Optional)
      }
    }
  }

  criteria block "list" (Optional) {

    aws_account_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    aws_account_name block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    company_name block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    compliance_associated_standards_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    compliance_security_control_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    compliance_status block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    confidence block "set" (Optional) {
      eq = number (Optional)
      gt = number (Optional)
      gte = number (Optional)
      lt = number (Optional)
      lte = number (Optional)
    }

    created_at block "set" (Optional) {
      end = string (Optional)
      start = string (Optional)

      date_range block "list" (Optional) {
        unit = string (Required)
        value = number (Required)
      }
    }

    criticality block "set" (Optional) {
      eq = number (Optional)
      gt = number (Optional)
      gte = number (Optional)
      lt = number (Optional)
      lte = number (Optional)
    }

    description block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    first_observed_at block "set" (Optional) {
      end = string (Optional)
      start = string (Optional)

      date_range block "list" (Optional) {
        unit = string (Required)
        value = number (Required)
      }
    }

    generator_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    last_observed_at block "set" (Optional) {
      end = string (Optional)
      start = string (Optional)

      date_range block "list" (Optional) {
        unit = string (Required)
        value = number (Required)
      }
    }

    note_text block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    note_updated_at block "set" (Optional) {
      end = string (Optional)
      start = string (Optional)

      date_range block "list" (Optional) {
        unit = string (Required)
        value = number (Required)
      }
    }

    note_updated_by block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    product_arn block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    product_name block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    record_state block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    related_findings_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    related_findings_product_arn block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_application_arn block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_application_name block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_details_other block "set" (Optional) {
      comparison = string (Required)
      key = string (Required)
      value = string (Required)
    }

    resource_id block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_partition block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_region block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    resource_tags block "set" (Optional) {
      comparison = string (Required)
      key = string (Required)
      value = string (Required)
    }

    resource_type block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    severity_label block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    source_url block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    title block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    type block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    updated_at block "set" (Optional) {
      end = string (Optional)
      start = string (Optional)

      date_range block "list" (Optional) {
        unit = string (Required)
        value = number (Required)
      }
    }

    user_defined_fields block "set" (Optional) {
      comparison = string (Required)
      key = string (Required)
      value = string (Required)
    }

    verification_state block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }

    workflow_status block "set" (Optional) {
      comparison = string (Required)
      value = string (Required)
    }
  }
}
