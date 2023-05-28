Terraform Module to provison an EC2 instance that is running Apache.

Not intended for productionuse. Just showcasing how to create a public module on Terraform Registry.

```hcl

terraform {

}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

module "apache" {
  source        = ".//terraform-aws-apache-example"
  ami_id        = "ami-0...."
  vpc_id        = "vpc-0000"
  instance_type = "t2.micro"
  server_name   = "Apache Example Server"
  public_key    = "ssh-rsa ...."
}

output "public_ip" {
  value = module.apache.public_ip
}

```