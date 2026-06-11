variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
  default     = "wp3tier"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Existing AWS key pair name for SSH (optional)"
  type        = string
  default     = ""
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed to SSH to instances"
  type        = string
  default     = "0.0.0.0/0"
}

variable "web_volume_size" {
  description = "Root volume size for web server"
  type        = number
  default     = 12
}

variable "db_volume_size" {
  description = "Root volume size for DB server"
  type        = number
  default     = 12
}

variable "cache_volume_size" {
  description = "Root volume size for cache server"
  type        = number
  default     = 8
}

variable "db_name" {
  description = "WordPress database name"
  type        = string
  default     = "wordpress"
}

variable "db_user" {
  description = "WordPress database user"
  type        = string
  default     = "wpuser"
}
