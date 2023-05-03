variable "init-lambda" {
  type = map(string)
  default = {
    "stage-init_lambda" = "189efd9da5eb5fc963ab1c4a0bd652e5"
    "prod-init_lambda" = "189efd9da5eb5fc963ab1c4a0bd652e5"
  }
}
