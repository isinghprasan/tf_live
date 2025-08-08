terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-state-prasan"
    key    = "stage/data-stores/mysql/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "terraform-up-and-running-prasan-locks"
    encrypt        = true
  }
}