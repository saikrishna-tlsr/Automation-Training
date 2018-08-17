resource "aws_instance" "automation" {
  count = 3
  ami = "ami-759bc50a"
  instance_type = "t1.micro"
  key_name = "sai"
  tags {
    Name = "automation"
  }
  subnet_id = "${aws_subnet.My_VPC_Subnet.id}"
  security_groups = [ "${aws_security_group.My_VPC_Security_Group.id}" ]
  instances = ["${aws_instance.automation.*.id}"]
}
