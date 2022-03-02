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
  apikey    = "6215f5837564612d33ba6c2b/6215f5837564612d33ba6c30/6215f5b87564612d31c00d14"
  secretkey = "./secretkey.pem"
  endpoint  = "https://intersight.com"
}