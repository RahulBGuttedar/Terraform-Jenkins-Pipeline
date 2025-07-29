variable "byte_length_from_tfvars" {
  type    = number
  default = 4
}

variable "pet_length_from_env" {
  type    = number
  default = 2
}

variable "pet_prefix_from_auto_tfvars" {
  type    = string
  default = "default"
}

variable "pet_length_from_cli" {
  type    = number
  default = 2
}

variable "str_length_from_auto_tfvars" {
  type    = number
  default = 6
}

