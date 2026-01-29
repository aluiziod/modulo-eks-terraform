module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "21.15.1"

  name = var.eks_name
  kubernetes_version = "1.31"
  subnet_ids = module.vpc.private_subnets
  vpc_id = module.vpc.vpc_id
  endpoint_private_access = true
  endpoint_public_access = true
  
  enable_cluster_creator_admin_permissions = true

  eks_managed_node_groups = {
    eks_nodes = {
      min_size     = 2
      max_size     = 6
      desired_size = 3

      instance_types = ["t3.medium"]
    }    
  }
}