variable "init-lambda" {
  type = map(string)
  default = {
    "stage-init_lambda" = "cb537ce181190b2c7c2b5bc80ce27e6a"
    "prod-init_lambda" = "6087c88035a256872bdad0d7cbb3ec34"
  }
}
