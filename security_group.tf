provider "aws" {
  region  = "eu-west-1"
  profile = "devtest"
}

resource "aws_security_group" "doom" {
  vpc_id = "vpc-1234567"
}

resource "aws_security_group_rule" "doom" {
  type      = "ingress"
  from_port = 666
  to_port   = 666
  protocol  = "tcp"

  cidr_blocks       = ["10.0.0.0/8"]
  security_group_id = "${aws_security_group.doom.id}"
}
