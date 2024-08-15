variable "region" {
  description = "The AWS region to create resources in."
  type        = string
  default     =  "eu-north-1" 
}


variable "key_path" {
  description = "The path to the  SSH key."
  type        = string
  default     = "./.key/danit17.pem"
}