output "web_public_ip" {
  description = "Public IP of WordPress web server"
  value       = aws_instance.web.public_ip
}

output "wordpress_url" {
  description = "URL to access WordPress setup"
  value       = "http://${aws_instance.web.public_ip}"
}

output "db_private_ip" {
  description = "Private IP of DB server"
  value       = aws_instance.db.private_ip
}

output "cache_private_ip" {
  description = "Private IP of Redis cache server"
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
