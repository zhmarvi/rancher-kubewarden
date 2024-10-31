locals {

  rancher_url        = "<RANCHER_FRONTEND_URL>"
  rancher_access_key = "<RANCHER_API_ACCESS_TOKEN>"
  rancher_secret_key = "<RANCHER_API_SECRET_KEY"
  cluster_id         = "<CLUSTER_ID>"
}

module "kubewarden" {
  source = "./kubewarden"
  rancher_url        =  local.rancher_url
  rancher_access_key = local.rancher_access_key
  rancher_secret_key = local.rancher_secret_key
  cluster_id         = local.cluster_id
}
