resource "aws_key_pair" "example" {
  key_name   = "example"
  public_key = tls_private_key.key.public_key_openssh # Public key

  tags = {
    Name = "terraform-example" # Name tag
  }
}
