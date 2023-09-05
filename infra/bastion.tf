# 5. To create  aws instance :
#  ATTENTION : This is not the right way were creating bastion host cuz  we should create 
#  bashing host in one of our VPC Dev environment
#  This blocks blown are to show how the Terraform accomplish and works 
#  Here is The point we can jump to private subnet
#  To create  ec2  Terraform instance Based on official Documentation (aw_instance)

# data  &  resouce :
# to fetch something from  aws we need data 
# when we want to create  we use  resource 
# in instance , name server 

# This block  gives  AMI that we will  use to create AWS instance 




# data "aws_ami" "amazon_linux" {
#   most_recent = true
#   filter {
#     name   = "name"
#     values = ["amzn2-ami-hvm-2.0.*-x86_64-gp2"]
#   }
#   owners = ["amazon"]

# }


# # bastion will be a name for instance 
# resource "aws_instance" "bastion" {
#   ami           = data.aws_ami.amazon_linux.id
#   instance_type = "t2.micro"
#   key_name      = var.bastion_key_name
#   #   user_data,subnet_id , key_name


#   #  local is in our main.tf 
#   tags = merge(
#     local.common_tags,
#     tomap({ "Name" = "${local.prefix}-bastion" })
#   )
# }











# terraform workspace new dev: to initi our environ with help of dev
# 5.1
# $ terrafrom fmt,   $ ter....validate


# 5.2
# To create resource 
# $aws configure   ,   ==> $ terraform plan ,  

# 5.3 To create bastion :
#  next  $......apply 

# 6. to  delete the server and instance
#  $ terraform destroy