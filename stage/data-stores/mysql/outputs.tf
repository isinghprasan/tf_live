output "address" {
  value       = module.aws_db_instance.address
  description = "Connect to the database at this endpoint"
}

output "port" {
  value       = module.aws_db_instance.port
  description = "The port of the database is listening on"
}