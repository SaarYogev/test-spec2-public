variable "required_input" {
  type = string
}

resource "null_resource" "echo" {
  triggers = {
    value = var.required_input
  }
}

output "value" {
  value = var.required_input
}
