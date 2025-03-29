resource "kubernetes_namespace" "ingress_nginx_namespaces" {
  metadata {
    name = "ingress-nginx"
  }
}
