resource "tls_private_key" "key" {
  algorithm = "RSA"
}

resource "local_file" "private_key" {
  content         = tls_private_key.key.private_key_openssh # Private key
  filename        = "example.pem"
  file_permission = "0400"
}
