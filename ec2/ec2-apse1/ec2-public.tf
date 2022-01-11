# Create EC2 based on module

# ec2 demo ubuntu with public ip in public subnet
module "demo_ubuntu_public_ip_enabled" {
  source = "../../modules/ec2-apse1/ec2-ubuntu"
  count  = 1

  associate_public_ip = true
  vpc_security_group  = data.terraform_remote_state.vpc_phpid_demo.outputs.sec_group_demo_public_phpid
  vpc_subnet          = data.terraform_remote_state.vpc_phpid_demo.outputs.public_phpid_demo_0

  ec2_tags = {
    Name = "demo-ubuntu-public-ippub-${count.index}"
  }
}

# ec2 demo ubuntu without public ip in public subnet
module "demo_ubuntu_public_ip_disabled" {
  source = "../../modules/ec2-apse1/ec2-ubuntu"
  count  = 1

  vpc_security_group = data.terraform_remote_state.vpc_phpid_demo.outputs.sec_group_demo_public_phpid
  vpc_subnet         = data.terraform_remote_state.vpc_phpid_demo.outputs.public_phpid_demo_0

  ec2_tags = {
    Name = "demo-ubuntu-public-no-ippub${count.index}"
  }
}
