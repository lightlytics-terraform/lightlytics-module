variable "init-lambda" {
  type = map(string)
  default = {
    "stage-init_lambda" = "6087c88035a256872bdad0d7cbb3ec34"
    "prod-init_lambda" = "6087c88035a256872bdad0d7cbb3ec34"
  }
}
