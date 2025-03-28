resource "helm_release" "nginx_ingress" {
  name       = "ingress-nginx"
  namespace  = kubernetes_namespace.ingress_nginx_namespaces.metadata[0].name
  chart      = "ingress-nginx"
  repository = "https://kubernetes.github.io/ingress-nginx"
  version    = "4.11.2"

  values = [file("${path.module}/charts/ingress-nginx/values.yaml")]

  timeout = 600

  depends_on = [
    aws_lb.nlb,
    kubernetes_namespace.ingress_nginx_namespaces
  ]
}
