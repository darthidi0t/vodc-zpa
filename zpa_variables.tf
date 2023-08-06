// Create Zscaler App Connector Group
variable "zpa_app_connector_group_name" {
  default = "Canada Connector Group"
  type    = string
}

variable "zpa_app_connector_group_description" {
  default = "Canada Connector Group"
  type    = string
}

variable "zpa_app_connector_group_enabled" {
  default = true
  type    = bool
}

variable "zpa_app_connector_group_city_country" {
  default = "Toronto, CA"
  type    = string
}

variable "zpa_app_connector_group_country_code" {
  default = "CA"
  type    = string
}

variable "zpa_app_connector_group_latitude" {
  default = "43.653226"
  type    = string
}

variable "zpa_app_connector_group_longitude" {
  default = "-79.3831843"
  type    = string
}

variable "zpa_app_connector_group_location" {
  default = "Toronto, CA, Canada"
  type    = string
}

variable "zpa_app_connector_group_upgrade_day" {
  default = "SUNDAY"
  type    = string
}

variable "zpa_app_connector_group_upgrade_time_in_secs" {
  default = "66600"
  type    = string
}

variable "zpa_app_connector_group_override_version_profile" {
  default = true
  type    = bool
}

variable "zpa_app_connector_group_version_profile_id" {
  default = 0
  type    = string
}

variable "zpa_app_connector_group_dns_query_type" {
  default = "IPV4_IPV6"
  type    = string
}

// Create Zscaler Provisioning Key
variable "zpa_provisioning_key_name" {
  default = ""
  type    = string
}

variable "zpa_provisioning_key_association_type" {
  default = "CONNECTOR_GRP"
  type    = string
}

variable "zpa_provisioning_key_max_usage" {
  default = "10"
  type    = string
}

