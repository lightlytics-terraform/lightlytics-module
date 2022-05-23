variable "init-lambda" {
  type = map(string)
  default = {
    "stage-init_lambda" = "3e7afb2ee103e42cfa484cd0be981717"
    "prod-init_lambda" = "6087c88035a256872bdad0d7cbb3ec34"
  }
}
