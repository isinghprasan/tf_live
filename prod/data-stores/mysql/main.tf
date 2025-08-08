provider "aws" {
  region = "us-east-2"
}

module "aws_db_instance" {
  source = "../../../modules/data-stores/mysql"

  cluster_name = "rds-prod"
  db_username = "prasan"
  db_password = "super-secure-123-pass"
}