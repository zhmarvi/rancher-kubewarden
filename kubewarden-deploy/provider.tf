terraform {
  required_providers {
    rancher2 = {
      source = "rancher/rancher2"
      version = "5.1.0"
    }
  }
}

provider "rancher2" {
  api_url    = "<RANCHER_URL>"
  access_key      = "<ACCESS_TOKEN>"
  secret_key      = "<SECRET_KEY>"
  insecure   = true
}
