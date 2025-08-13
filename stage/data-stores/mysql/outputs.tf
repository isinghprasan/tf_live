output "address" {
  value       = module.mysql_primary.address
  description = "Connect to the database at this endpoint"
}

output "port" {
  value       = module.mysql_primary.port
  description = "The port of the database is listening on"
}
