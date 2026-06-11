variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
  default     = "wp-rhel9"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Existing AWS EC2 key pair name for SSH. Leave empty to skip SSH key assignment."
  type        = string
  default     = ""
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to SSH to the instances"
  type        = string
  default     = "0.0.0.0/0"
}

variable "web_volume_size" {
  description = "Root disk size in GiB for web server"
  type        = number
  default     = 12
}

variable "db_volume_size" {
  description = "Root disk size in GiB for DB server"
  type        = number
  default     = 12
}

variable "cache_volume_size" {
  description = "Root disk size in GiB for cache server"
  type        = number
  default     = 10
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

