terraform {
  backend "s3" {
    bucket  = "dyakovlev"
    key     = "teamcity/sandbox/terraform.tfstate"
    profile = "sandbox-technical-user"
    region  = "eu-west-1"
  }

  required_version = ">=0.11"
}

resource "aws_efs_file_system" "data" {
  creation_token = "teamcity-backups"
}

