provider "aws" {
  region = "us-east-2"
}

module "aws_db_instance" {
  source = "github.com/isinghprasan/tf_modules//data-stores/mysql?ref=v0.0.1"

  cluster_name = "rds-prod"
  db_username = "prasan"
  db_password = "super-secure-123-pass"
}