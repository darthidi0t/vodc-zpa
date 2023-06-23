# Get Global Access Policy ID
data "zpa_policy_type" "access_policy" {
    policy_type = "ACCESS_POLICY"
}

# Get IdP ID
data "zpa_idp_controller" "idp_name" {
# name = "IdP_Name"
  name = "Azure IdP"
}

data "zpa_scim_attribute_header" "givenName" {
  name     = "name.givenName"
  idp_name = "Azure IdP"
}

data "zpa_scim_attribute_header" "familyName" {
  name     = "name.familyName"
  idp_name = "Azure IdP"
}

#Create Policy Access Rule
resource "zpa_policy_access_rule" "this" {
  name                          = var.zpa_policy_access_rule_name
  description                   = var.zpa_policy_access_rule_description
  action                        = var.zpa_policy_access_rule_action
  operator                      = var.zpa_policy_access_rule_operator
  policy_set_id                 = data.zpa_policy_type.access_policy.id

  conditions {
    negated   = false
    operator  = "OR"
    operands {
      object_type = "APP"
      lhs = "id"
#      rhs = zpa_application_segment.test_app_segment.id
      rhs = zpa_application_segment.this.id
    }
  }
  conditions {
    negated = false
    operator = "AND"
    operands {
      object_type = "SCIM"
      idp_id      = data.zpa_scim_attribute_header.givenName.idp_id
      lhs         = data.zpa_scim_attribute_header.givenName.id
      rhs         = "Nishikant"
    }
    operands {
      object_type = "SCIM"
      idp_id      = data.zpa_scim_attribute_header.familyName.idp_id
      lhs         = data.zpa_scim_attribute_header.familyName.id
      rhs         = "Umbarkar"
    }
  }
}
