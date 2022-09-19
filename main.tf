terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.1.0"
    }
  }
}

module "shared_vars" {
    source = "./shared_vars"  
}

provider "aws" {
    profile = "${module.shared_vars.profile}"
    region = "${module.shared_vars.region}"
}

module "ec2_module_1" {
    source = "./ec2_module"
    ec2name = "web_server1" 
}

module "ec2_module_2" {
    source = "./ec2_module" 
        ec2name = "web_server2"  
}

module "vpc_module" {
    source = "./vpc_module"
    vpcname = "vpc2" 
}