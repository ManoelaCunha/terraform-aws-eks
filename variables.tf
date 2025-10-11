variable "cluster_name" {
  description = "Nome do cluster EKS"
  type        = string
  default     = "aws-eks"
}

variable "environment" {
  description = "Ambiente (dev|prod)"
  type        = string
  default     = "dev"
}

variable "region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
}

variable "use_default_vpc" {
  description = "Se true, usa a VPC default. Se false, cria VPC custom."
  type        = bool
  default     = true
}

variable "vpc_cidr" {
  description = "CIDR da VPC custom"
  type        = string
  default     = "10.30.0.0/16"
}

variable "subnet_cidrs" {
  description = "Lista de CIDRs para subnets custom"
  type        = list(string)
  default     = ["10.30.1.0/24", "10.30.2.0/24"]
}

variable "azs" {
  description = "Availability zones para subnets custom"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "node_instance_type" {
  description = "Tipo de instância para nodos"
  type        = string
  default     = "t3.small"
}

variable "node_count" {
  description = "Quantidade de nodos"
  type        = number
  default     = 2
}


