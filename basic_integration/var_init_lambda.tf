variable "init-lambda" {
  type = map(string)
  default = {
    "stage-init_lambda" = "07b5b792015ce262d599b842372c5af5"
    "prod-init_lambda" = "4acebcd2bf4ed2d30dbf2bbf3e33434c"
  }
}
