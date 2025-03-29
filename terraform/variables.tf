variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS Account region"
}

variable "iam_role_name" {
  type = string
  default = "LabRole"
  description = "IAM Role Name"
}

variable "vpc_name" {
  type        = string
  default     = "fiap-hackathon-vpc"
  description = "Custom VPC name"
}

variable "eks_cluster_name" {
  type        = string
  default     = "fiap-hackathon-eks-cluster"
  description = "EKS Cluster name"
}

variable "node_group_name" {
  type        = string
  default     = "fiap-hackathon-node-group"
  description = "EKS Cluster name"
}

variable "nlb_name" {
  type        = string
  default     = "fiap-hackathon-nlb"
  description = "Network Load Balancer name"
}

