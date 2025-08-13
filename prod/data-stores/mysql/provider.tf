provider "aws" {
  region = "us-east-2"
  alias  = "primary"

  default_tags {
    tags = {
      Owner     = "team-foo"
      ManagedBy = "terraform"
    }
  }
}

provider "aws" {
  region = "us-west-1"
  alias  = "replica"
}
