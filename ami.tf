data "aws_ami_ids" "ubuntu" {
  owners = ["099720109477"]

  filter {
    name = "name"
    # values = ["ubuntu/images/ubuntu-*-*-amd64-server-*"]
    values = ["ubuntu/images/ubuntu-22.04-LTS-amd64-server-*"]
  }
}

data "aws_vpc" "selected" {
  filter {
    name   = "tag:Name"
    values = ["main"]
  }
}