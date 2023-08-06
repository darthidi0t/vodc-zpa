# Configure ZPA provider source and version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    zpa = {
      source = "zscaler/zpa"
      version = "~> 2.7.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "xxxxxxx"
  secret_key = "xxxxxxx"

}

# Submit provider variables

provider "zpa" {
  zpa_client_id         = "xxxxx"
  zpa_client_secret     = "xxxxx"
  zpa_customer_id       = "xxxxx"
}

