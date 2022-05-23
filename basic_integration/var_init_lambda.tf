variable "init-lambda" {
  type = map(string)
  default = {
    "stage-init_lambda" = "4d8ef1c5eef5bc564b11938ff10c16ed"
    "prod-init_lambda" = "6087c88035a256872bdad0d7cbb3ec34"
  }
}
