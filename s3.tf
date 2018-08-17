resource "aws_s3_bucket" "b" {
  bucket = "my-vpc-test-bucket"
  acl    = "private"

  tags {
    Name        = "sai"
    Environment = "Dev"
  }
}
