resource "rancher2_catalog_v2" "rancher-kubewarden-charts" {
  cluster_id = var.cluster_id 
  name = "kubewarden-charts"
  url = "https://charts.kubewarden.io"
}

resource "rancher2_app_v2" "rancher-kubewarden-controller" {
  cluster_id = var.cluster_id
  name = "kubewarden-controller"
  namespace = "cattle-kubewarden-system"
  repo_name = "kubewarden-charts"
  chart_name = "kubewarden-controller"
  #values = file("values.yaml")
  system_default_registry = "ghcr.io"
  depends_on = [ rancher2_catalog_v2.rancher-kubewarden-charts ]
}

resource "rancher2_app_v2" "rancher-kubewarden-defaults" {
  cluster_id = var.cluster_id
  name = "kubewarden-defaults"
  namespace = "cattle-kubewarden-system"
  repo_name = "kubewarden-charts"
  chart_name = "kubewarden-defaults"
  system_default_registry = "ghcr.io"
  depends_on = [ rancher2_app_v2.rancher-kubewarden-controller ]
}
