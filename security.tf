resource "aws_security_group" "eks" {
  name        = "${var.cluster_name}-${var.environment}-eks-sg"
  description = "Acesso ao EKS Cluster"
  vpc_id      = local.vpc_id_eks
  tags        = local.common_tags

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}