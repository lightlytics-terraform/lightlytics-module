variable "init-lambda" {
  type = map(string)
  default = {
    "stage-init_lambda" = "4acebcd2bf4ed2d30dbf2bbf3e33434c"
    "prod-init_lambda" = "189efd9da5eb5fc963ab1c4a0bd652e5"
  }
}
