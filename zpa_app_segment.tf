# ZPA Application Segment resource
resource "zpa_application_segment" "this" {
    name              = var.zpa_app_segment_name
    description       = var.zpa_app_segment_description
    enabled           = true
    health_reporting  = var.zpa_app_segment_health_reporting
    bypass_type       = "NEVER"
    is_cname_enabled  = true
    tcp_port_ranges   = ["80", "443"]
    domain_names      = [
        "server.koba-tf.com",
        "*.browserleaks.com"
    ]
    segment_group_id  = zpa_segment_group.this.id
    server_groups {
        id = [ zpa_server_group.this.id]
    }
    depends_on = [ zpa_server_group.this, zpa_segment_group.this]
}

# ZPA Segment Group resource
resource "zpa_segment_group" "this" {
  name            = var.zpa_segment_group_name
  description     = var.zpa_segment_group_description
  enabled         = true
}

# ZPA Server Group resource
resource "zpa_server_group" "this" {
  name              = var.zpa_server_group_name
  description       = var.zpa_server_group_description
  enabled           = true
  dynamic_discovery = true
  app_connector_groups {
    id = [ zpa_app_connector_group.vODC.id ]
  }
  depends_on = [ zpa_app_connector_group.vODC ]
}
