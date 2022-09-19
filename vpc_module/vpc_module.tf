module "shared_vars" {
    source = "../shared_vars"  
}

variable "vpcname" {}

resource "aws_vpc" "myvpc" {
    cidr_block      = "${module.shared_vars.cidr}"
    enable_dns_hostnames = true
    tags = {
        Name = "${module.shared_vars.prefix}_${var.vpcname}"
    }
}