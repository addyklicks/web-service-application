variable "db_name" {
  description = "The name of the MySQL database"
  type        = string
}
variable "db_name" {
  description = "The name of the MySQL database"
  type        = string
  default     = "example-db"
}

variable "db_username" {
  description = "The master username for the database"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "The master password for the database"
  type        = string
  default     = "securepassword"
  sensitive   = true
}

variable "subnet_ids" {
  description = "List of subnet IDs for the RDS instance"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs for the RDS instance"
  type        = list(string)
}
