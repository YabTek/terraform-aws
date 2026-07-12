resource "aws_s3_bucket" "demo" {

  bucket = "terraform-yab-2026-demo"

  tags = {
    Name = "terraform-demo-bucket"
  }

}