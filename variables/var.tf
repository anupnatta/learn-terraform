variable "sample" {
  default = "Hello Anup"
}

output "sample" {
  value = var.sample
}

variable "sample1" {

}

output "sample1" {
  value = var.sample1
}

variable "input" {}

variable "sample4" {
  default = [
    "Hello Anup",
    1000,
    true,
    "Anup"
  ]
}
variable "sample5" {
  default = {
    string = "Hello Anup",
    numeber = 100,
    boolean = true
  }
}

output "types" {
  value = "Variable sample1 - ${var.sample1}, First value in list - ${var.sample4[3]}, String value of Map =${var.sample5["string"]} ,Boolean Value of Map = ${var.sample5["boolean"]}"
  }

