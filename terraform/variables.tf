variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "project_name" {
  default = "medusa"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "db_username" {
  default = "medusa_user"
}

variable "db_password" {
  description = "Password for the RDS DB"
  type        = string
  sensitive   = true
}

variable "medusa_container_image" {
  default = "medusajs/medusa:latest"
}

variable "desired_count" {
  default = 1
}
