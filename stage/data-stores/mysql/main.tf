module "aws_db_instance" {
  source = "github.com/isinghprasan/tf_modules//data-stores/mysql?ref=v0.0.1"

  cluster_name = "rds-stage"
  db_username = "singh"
  db_password = "super-secure-123-pass"
}
