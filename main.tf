terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

variable "min" {
  type = number
  description = "The minimum value"
  default = 1000
}

variable "max" {
  type = number
  description = "The maximum value"
  default = 9999
}

resource "random_integer" "value" {
  min = var.min
  max = var.max
}

output "value" {
  value = random_integer.value.result
}