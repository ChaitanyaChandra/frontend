module "frontend-ami" {
  source         = "github.com/ChaitanyaChandra/terraform-ami"
  COMPONENT      = "frontend"
  APP_VERSION    = var.APP_VERSION
  NEXUS_USERNAME = var.NEXUS_USERNAME
  NEXUS_PASSWORD = var.NEXUS_PASSWORD
  ENV            = var.ENV
  PROJECT        = var.PROJECT
}

variable "APP_VERSION" {}
variable "NEXUS_USERNAME" {}
variable "NEXUS_PASSWORD" {}
variable "ENV" {}
variable "PROJECT" {}

output "all" {
  value = [var.APP_VERSION, var.NEXUS_USERNAME, var.NEXUS_PASSWORD, var.ENV, var.PROJECT]
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-nonprod-state-chaitu-env"
    key    = "immutable/frontend/ami/terraform.tfstate"
    region = "us-east-1"
  }
}

