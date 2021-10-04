# --- platform/variables.tf ---
# LAYER 2
variable "region" {
  default     = "us-east-1"
  description = "AWS Region"
}

variable "ec2_instance_type" {
  description = "EC2 Instance type to launch"
}

variable "ec2_key_pair_name" {
  default     = "EC2KeypairTestAcct"
  description = "Key pair for connecting to launched EC2 instances"
}

variable "ec2_min_instance_size" {
  description = "Minimum number of instances to launch in AutoScaling Group"
}

variable "ec2_max_instance_size" {
  description = "Maximum number of instances to launch in AutoScaling Group"
}

variable "tag_production" {
  default = "Production"
}

variable "tag_webapp" {
  default = "WebApp"
}

variable "tag_backend" {
  default = "Backend"
}

variable "sms_number" {
  default = "My SMS number for sns notifications. Defined in TF Cloud."
}