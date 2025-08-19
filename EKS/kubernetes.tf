# provider "kubernetes" {
#   host                   = data.aws_eks_cluster.cluster.endpoint
#   token                  = data.aws_eks_cluster_auth.cluster.token
#   cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
# }

# Configure the Kubernetes provider against the new EKS cluster
# Note: This works after the cluster exists. For first-time apply,
# you can run `terraform apply -target=module.eks` and then a second apply,
# or keep this as-is if your pipeline applies in one shot.

provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)

  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    command     = "aws"
    args        = ["eks", "get-token", "--cluster-name", module.eks.cluster_name]
  }
}

