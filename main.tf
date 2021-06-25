provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}


module "server" {
  source = "git@github.com:tpersson86/frb_terraform_-module.git?ref=v1.0.0"

  ami                    = var.ami
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  identity               = var.identity
  num_webs               = var.num_webs
}
