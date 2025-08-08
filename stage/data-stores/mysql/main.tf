provider "aws" {
  region = "us-east-2"
}

module "aws_db_instance" {
  source = "../../../modules/data-stores/mysql"

  cluster_name = "rds-stage"
  db_username = "singh"
  db_password = "super-secure-123-pass"
}