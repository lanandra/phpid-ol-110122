# Get terraform state from other workspace
data "terraform_remote_state" "vpc_phpid_demo" {
  backend = "remote"

  config = {
    organization = "your-organization"
    workspaces = {
      name = "your-vpc-workspace"
    }
  }
}
