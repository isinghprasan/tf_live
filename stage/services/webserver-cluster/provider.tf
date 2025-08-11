provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = {
      Owner = "team-foo"
      ManagedBy = "terraform"
    }
  }
}

