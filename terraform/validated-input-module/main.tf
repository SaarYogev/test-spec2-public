variable "mode" {
  type = string

  validation {
    condition     = var.mode == "ok"
    error_message = "mode must be \"ok\"."
  }
}

resource "null_resource" "echo" {
  triggers = {
    mode = var.mode
  }
}
