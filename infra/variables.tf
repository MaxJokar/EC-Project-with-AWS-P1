# 4
variable "prefix" {
  default = "backend"
}



variable "project" {
  default = "backend-api"
}



variable "contact" {
  default = "MaxJokar.com"
}


# after we make this block we make a key_pair also becasue we want to access 
# to private subnets 
variable "bastion_key_name" {
  default = "bastion6-key6"
}


#  4.1
# $ terraform workspace new dev
# $ terraform workspace list 

#  5. => bastion.tf