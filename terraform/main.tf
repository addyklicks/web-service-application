provider "aws" {
  region = var.region
}

module "vpc" {
  source      = "./modules/vpc"
  cidr_block  = var.cidr_block   # Pass the variable defined in variables.tf
}

module "ecs" {
  source       = "./modules/ecs"
  cluster_name = var.cluster_name  # Pass the variable defined in variables.tf
}

module "rds" {
  source  = "./modules/rds"
  db_name = var.db_name  # Pass the variable defined in variables.tf
}

module "redis" {
  source = "./modules/redis"
}
