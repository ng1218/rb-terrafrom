resource "helm_release" "external-secrets" {
  name       = "external-secrets"
  repository = "https://charts.external-secrets.io"
  chart      = "external-secrets"
  namespace   = "roboshop-${var.env}"

  set = [
    {
      name  = "installCRDs"
      value = "true"
    },
    {
      name  = "create_namespace"
      value = "true"
    }
  ]
}