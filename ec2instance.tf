resource "aws_instance" "automation" {
  ami = "ami-759bc50a"
  instance_type = "t1.micro"
  tags {
    Name = "automation"
  }
  security_groups = [ "${aws_security_group.My_VPC_Security_Group.id}" ]
}
