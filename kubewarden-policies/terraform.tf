locals {

  kubeconfig = "<KUBECONFIG_PATH>"
}

module "kubewarden-policies" {
  source        = "."
  kubeconfig    = local.kubeconfig
