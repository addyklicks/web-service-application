# This variable allows users to specify the name of the ECS cluster during deployment.

variable "cluster_name" {
  # Description of the variable
  # Provides information about what the variable represents.
  description = "The name of the ECS cluster"
  # Type of the variable
  # Ensures that the value assigned to this variable must be a string.
  type        = string
}
