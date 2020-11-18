provider "aws" {
    access_key = "$(aws_access_key)"
    secret_key = "$(aws_secret_key)"
    region = "$(aws_region)"
}

resource "aws_vpc" "default" {
    cidr_block = "$(vpc_cidr)"
    enable_dns_hostnames = true
    tags = {
        Name = "$(vpc_name)"
    }
}
