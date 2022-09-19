module "shared_vars" {
    source = "../shared_vars"  
}

variable "ec2name" {}

resource "aws_instance" "web_server" {
    ami             = "${module.shared_vars.ami}"
    instance_type   = "${module.shared_vars.instance_type}"
    tags = {
        Name = "${module.shared_vars.prefix}_${var.ec2name}"
    }
}