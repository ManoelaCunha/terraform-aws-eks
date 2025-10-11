output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "vpc_id_used" {
  value = local.vpc_id_eks
}

output "subnet_ids_used" {
  value = local.subnets_eks
}
