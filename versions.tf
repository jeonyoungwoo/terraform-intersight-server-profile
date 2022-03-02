# Terraform and Intersight Provider Information 
terraform {
  required_version = ">= 0.13.0"

  required_providers {
    intersight = {
      source  = "ciscodevnet/intersight"
      version = ">= 1.0.2"
    }
  }
}
provider "intersight" {
  apikey    = "61d542847564612d3345b882/61d545367564612d31edab46/61ecd1a57564612d315cce24"
  secretkey = "./secretkey.pem"
  endpoint  = "https://intersight.com"
}