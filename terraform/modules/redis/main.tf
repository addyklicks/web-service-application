module "redis" {
  source = "terraform-aws-modules/elasticache/aws"
  engine = "redis"
}