# Create EC2 based on module

# ec2 demo ubuntu in private subnet
module "demo_ubuntu_private" {
  source = "../../modules/ec2-apse1/ec2-ubuntu"
  count  = 1

  vpc_security_group = data.terraform_remote_state.vpc_phpid_demo.outputs.sec_group_demo_private_phpid
  vpc_subnet         = data.terraform_remote_state.vpc_phpid_demo.outputs.private_phpid_demo_0

  ec2_tags = {
    Name = "demo-ubuntu-private-${count.index}"
  }
}
