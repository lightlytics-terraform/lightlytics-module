variable "init-lambda" {
  type = map(string)
  default = {
    "stage-init_lambda" = "1c12184dd14ad0fc6bcf9dd9a463f4b1"
    "prod-init_lambda" = "6087c88035a256872bdad0d7cbb3ec34"
  }
}
