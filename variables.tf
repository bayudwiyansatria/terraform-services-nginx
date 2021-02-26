variable "ssh_host" {
  type          = string
  description   = "SSH target host"
  default       = "127.0.0.1"
}

variable "ssh_username" {
  type          = string
  description   = "SSH Username"
  default       = ""
}

variable "ssh_password" {
  type          = string
  description   = "SSH Password"
  default       = ""
  sensitive     = true
}