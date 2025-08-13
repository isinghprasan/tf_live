module "mysql_primary" {
  source = "../../../../modules/data-stores/mysql"

  providers = {
    aws = aws.primary
  }

  cluster_name = "rds-stage"
  db_username  = var.db_username
  db_password  = var.db_password
}
