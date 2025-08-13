module "mysql_primary" {
  source = "../../../../modules/data-stores/mysql"

  providers = {
    aws = aws.primary
  }

  cluster_name = "rds-prod"
  db_username  = var.db_username
  db_password  = var.db_password

  backup_retention_period = 1
}

module "mysql_replica" {
  source = "../../../../modules/data-stores/mysql"

  cluster_name = "rds-prod"
  providers = {
    aws = aws.replica
  }

  replicate_source_db = module.mysql_primary.arn
}
