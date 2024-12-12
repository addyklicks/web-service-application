variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
  default     = "example-cluster"
}

variable "db_name" {
  description = "The name of the MySQL database"
  type        = string
  default     = "example-db"
}

