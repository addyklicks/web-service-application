# Specifies the region where AWS resources will be deployed. Defaults to "us-east-1".
variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

# Specifies the IP address range for the VPC. Defaults to "10.0.0.0/16".
variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Specifies the name of the ECS cluster. Defaults to "example-cluster".
variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
  default     = "example-cluster"
}

# Specifies the name of the RDS MySQL database. Defaults to "example-db".
variable "db_name" {
  description = "The name of the MySQL database"
  type        = string
  default     = "example-db"
}