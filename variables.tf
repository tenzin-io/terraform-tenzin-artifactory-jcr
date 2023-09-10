variable "certificate_issuer_name" {
  description = "The name of the cert-manager certificate issuer"
  type        = string
}

variable "jcr_ingress_host" {
  description = "The hostname of the JFrog Container Registry"
  type        = string
}
