# Setup AWS Region
variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "ap-southeast-1"
}

variable "vpc_security_group_public" {
  type        = string
  description = "Security group used by instance"
  default     = ""
}

variable "vpc_security_group_private" {
  type        = string
  description = "Security group used by instance"
  default     = ""
}

variable "vpc_subnet_public" {
  type        = list(string)
  description = "Subnet used by instance"
  default     = [""]
}

variable "vpc_subnet_private" {
  type        = list(string)
  description = "Subnet used by instance"
  default     = [""]
}
