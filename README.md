# README
Terraform module repository to deploy JFrog Container Registry in my home lab Kubernetes cluster.


<!-- BEGIN_TF_DOCS -->


## Resources

| Name | Type |
|------|------|
| [helm_release.container_registry](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [random_password.postgresql_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_certificate_issuer_name"></a> [certificate\_issuer\_name](#input\_certificate\_issuer\_name) | The name of the cert-manager certificate issuer | `string` | n/a | yes |
| <a name="input_jcr_ingress_host"></a> [jcr\_ingress\_host](#input\_jcr\_ingress\_host) | The hostname of the JFrog Container Registry | `string` | n/a | yes |
<!-- END_TF_DOCS -->