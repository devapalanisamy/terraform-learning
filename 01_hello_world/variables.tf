variable "instance1" {
  type      = string
  default   = "t3.micro"
  sensitive = false
  validation {
    condition     = length(var.instance1) > 3 && strcontains(var.instance1, "t3")
    error_message = "The length of the instance type must be between 3 and 10 characters and must contain t3"
  }
}
