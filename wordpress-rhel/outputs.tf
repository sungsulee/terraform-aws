output "wordpress_url" {
  description = "WordPress URL on the web server Elastic IP"
  value       = "http://${aws_eip.web_eip.public_ip}"
}

output "web_elastic_ip" {
  description = "Elastic IP of the web server"
  value       = aws_eip.web_eip.public_ip
}

output "db_private_ip" {
  description = "Private IP address of the DB server"
  value       = aws_instance.db.private_ip
}

output "cache_private_ip" {
  description = "Private IP address of the cache server"
  value       = aws_instance.cache.private_ip
}

output "db_name" {
  value = var.db_name
}

output "db_user" {
  value = var.db_user
}

output "db_password" {
  value     = random_password.db_password.result
  sensitive = true
}

