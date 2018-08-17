resource "aws_s3_bucket" "b" {
  bucket = "my-vpc-test-bucket1234"
  acl    = "private"

  tags {
    Name        = "sai1234"
    Environment = "Dev"
  }
}
