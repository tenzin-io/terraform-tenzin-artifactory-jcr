resource "helm_release" "container_registry" {
  name             = "artifactory-jcr"
  chart            = "artifactory-jcr"
  repository       = "https://charts.jfrog.io"
  version          = "107.63.14"
  namespace        = "jfrog"
  create_namespace = true
  values = [
    templatefile("${path.module}/templates/jcr-vaules.yaml", {
      postgresql_password     = random_password.postgresql_password.result
      jcr_ingress_host        = var.jcr_ingress_host
      certificate_issuer_name = var.certificate_issuer_name
    })
  ]
}

resource "random_password" "postgresql_password" {
  length  = 16
  special = false
}
