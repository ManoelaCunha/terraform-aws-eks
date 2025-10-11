provider "aws" {
  region = var.region
}

locals {
  common_tags = {
    Project     = var.cluster_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.13.1"

  cluster_name    = "aws-eks-${var.environment}"
  cluster_version = "1.29"

  vpc_id     = local.vpc_id_eks
  subnet_ids = local.subnets_eks

  cluster_endpoint_public_access = true

  eks_managed_node_groups = {
    default = {
      name           = "ng-${var.environment}"
      instance_types = ["t3.small"]
      min_size       = 1
      max_size       = 2
      desired_size   = 1
    }
  }
}
