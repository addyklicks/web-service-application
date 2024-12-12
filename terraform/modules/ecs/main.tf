module "ecs" {
  source = "terraform-aws-modules/ecs/aws"
  cluster_name = var.cluster_name
}