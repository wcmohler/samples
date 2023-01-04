variable "name" {
}

variable "environment" {
}

variable "cidr_block" {
}

variable "availability_zones" {
  type = list(string)
}

variable "instance_tenancy" {
  default = "default"
}

variable "enable_classiclink" {
  default = "false"
}

variable "public_subnets" {
  type = list(map(string))

  default = [
    {
      name      = "public"
      start_pos = 0
    },
  ]
}

variable "private_subnets" {
  type    = list(map(string))
  default = []
}
