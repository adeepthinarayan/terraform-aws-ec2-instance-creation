variable "image_id" {
  default     = "ami-0c7217cdde317cfec"
  type        = string
  description = "The identifier of the machine image used for the server."
  validation {
    condition     = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
    error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
  }
  nullable = false
}
variable "instance_types" {
  type = map(string)
  default = {
    "small"  = "t2.micro"
    "medium" = "m5.large"
    "large"  = "c5.xlarge"
  }
}
variable "instance_name" {
  type    = string
  default = "thinknyxserver"
}


variable "aws_regions" {
  description = "A list of AWS regions where resources will be deployed."
  type        = list(string)
  default     = ["us-west-1", "us-east-1", "eu-west-1", "ap-southeast-2"]
}


variable "private_keyname" {
  
}


