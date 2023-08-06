# aws variables
variable "aws-region" {
  description = "The AWS region."
  default     = "ap-south-1"
}

variable "name-prefix" {
  description = "The name prefix for all your resources"
  default     = "virtual-odc"
  type        = string
}

variable "resource-tag" {
  description = "A tag to associate to all the Cloud Connector module resources"
  default     = "app-connector"
}


# IAM Policy Variables
variable "iam_policy" {
  description = "Zscaler_SSM_Policy"
  default     = "Zscaler_SSM_Policy"
  type        = string
}

variable "aws_iam_role" {
  description = "Zscaler_SSM_IAM_Role"
  default     = "Zscaler_SSM_IAM_Role"
  type        = string
}

variable "instance_profile" {
  description = "App Connector Profile"
  default     = "App_Connector_Profile"
  type        = string
}

# AWS KMS Key Variables
variable "description" {
  description = "Zscaler_KMS_Key_ODC"
  default     = ""
  type        = string
}

variable "multi_region" {
  description = "Enable Multi-Region KMS"
  default     = true
  type        = bool
}

variable "key_spec" {
  default = "SYMMETRIC_DEFAULT"
}

variable "enabled" {
  default = true
}

variable "rotation_enabled" {
  default = false
}

variable "kms_alias" {
  description = "KMS Alias"
  default     = "Zscaler_KMS_SSM_ODC"
  type        = string
}

# SSM Parameter Store
variable "secure_parameters" {
  description = "Secure Parameters"
  default     = "virtual-odc"
  type        = string
}

variable "instance-type" {
  description = "App Connector Instance Type"
  default     = "t3.medium"
}

# VPC and Subnet Configuration
variable "vpc-cidr" {
  description = "VPC CIDR"
  default     = "10.1.0.0/16"
}

variable "subnet-count" {
  description = "Default number of worker subnets to create"
  default     = 1
}

variable "instance-per-subnet" {
  default = 1
}

variable "byo_eip_address" {
  default     = false
  type        = bool
  description = "Bring your own Elastic IP address for the NAT GW"
}

variable "nat_eip1_id" {
  default     = ""
  type        = string
  description = "User provided Elastic IP address ID for the NAT GW"
}

# Create Key Pair
variable "connector_key_pair" {
  default = "appconnector"
  type    = string
}

variable "public-key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGCXSc3jLLafKtzSRwOq05fOiKOrVR1DWqk5TjLiyh+kcfW/PH277QMPgsARgMlmAGYYit8f3bJFkQPD7oEas8raLN27qGxgR6DYG7Ko9iCfqR4mmmURs5tVdI12RfunUTmCAa3nA9GT3jC99SwayNjtWkocQeJ3m3p2yrERSqRS2EWdcqI/E/8vv5B/kp0vtI78mPIdd+Lx5U2Vy18fsJwJ74EpYbvOPCG1vS1M1W7og+x4lY5/esM9T+ZLyyzZCDxns4AvJuXPMWAtLtP8CqA1zAGUGtBzmmV8JIFCrmZy3RXO+UBBj0pfwf+qqz9sOACatyxmN/SrDo/WeDeGE7 kentarokoba@KENTAROs-MacBook-Pro.local"
  type    = string
}

# App Connector User Data
variable "user_data" {
  default = "user_data.sh"
  type    = string
}

