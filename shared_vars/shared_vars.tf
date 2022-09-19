
output "profile" {
  value = "${local.profile}"
}

output "region" {
  value = "${local.region}"
}

output "prefix" {
  value = "${local.prefix}"
}

output "ami" {
  value = "${local.ami}"
}

output "instance_type" {
  value = "${local.instance_type}"
}

output "cidr" {
  value = "${local.cidr}"
}

locals {
  env = "${terraform.workspace}"

  prefix_env = {
      default =  "dev"
      dev =  "dev"
      prod =  "prod"
  }
  prefix = "${lookup(local.prefix_env, local.env)}"

   ami_env = {
      default =  "ami-033b95fb8079dc481"
      dev =  "ami-033b95fb8079dc481"
      prod =  "ami-033b95fb8079dc481"
  }
  ami = "${lookup(local.ami_env, local.env)}"

  instance_type_env = {
      default =  "t2.micro"
      dev =  "t2.micro"
      prod =  "t2.micro"
  }
  instance_type = "${lookup(local.instance_type_env, local.env)}"

    cidr_env = {
      default =  "10.16.0.0/16"
      dev =  "10.16.0.0/16"
      prod =  "10.17.0.0/16"
  }
  cidr = "${lookup(local.cidr_env, local.env)}"

      profile_env = {
      default =  "myfricatv-terraform"
      dev =  "myfricatv-terraform"
      prod =  "myfricatv-terraform"
  }
  profile = "${lookup(local.profile_env, local.env)}"

      region_env = {
      default =  "us-east-1"
      dev =  "us-east-1"
      prod =  "us-east-1"
  }
  region = "${lookup(local.region_env, local.env)}"

}