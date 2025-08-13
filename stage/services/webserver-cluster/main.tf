module "webserver_cluster" {
  source = "../../../../modules/services/webserver-cluster"

  ami = "ami-0fb653ca2d3203ac1"
  server_text = "Let's see if this changes something"
  cluster_name           = "webservers-stage"
  db_remote_state_bucket = "terraform-up-and-running-state-prasan"
  db_remote_state_key    = "stage/data-stores/mysql/terraform.tfstate"
  min_size               = 2
  max_size               = 2
  instance_type          = "t2.micro"
  enable_autoscaling = false
}

resource "aws_security_group_rule" "allow_testing_inbound" {
  type              = "ingress"
  security_group_id = module.webserver_cluster.alb_security_group_id

  from_port   = 12345
  to_port     = 12345
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
