module "webserver_cluster" {
  source = "github.com/isinghprasan/tf_modules//services/webserver-cluster?ref=v0.0.1"

  cluster_name           = "webservers-stage"
  db_remote_state_bucket = "terraform-up-and-running-state-prasan"
  db_remote_state_key    = "stage/data-stores/mysql/terraform.tfstate"
  min_size               = 2
  max_size               = 2
  instance_type          = "t2.micro"
}

resource "aws_security_group_rule" "allow_testing_inbound" {
  type              = "ingress"
  security_group_id = module.webserver_cluster.alb_security_group_id

  from_port   = 12345
  to_port     = 12345
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
