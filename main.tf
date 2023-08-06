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
  access_key = "AKIA6MKCUR2FHYVWFHTM"
  secret_key = "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"

}

# Submit provider variables

provider "zpa" {
  zpa_client_id         = "Mjg4MjYwNTc1MTQwNTExOTAyLTJkODQ4MDNjLTlhZGYtNDEwMC1iZmY5LWE2NWQwZGZlOTA0Yg=="
  zpa_client_secret     = "T_#zT;j]r:P@_WT'fdch48TA#/9`#2q`"
  zpa_customer_id       = "288260575140511744"
}

