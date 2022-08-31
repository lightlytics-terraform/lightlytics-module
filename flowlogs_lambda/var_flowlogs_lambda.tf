variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "ca0ea8926b716122f6824e453a1dfd4c"
    "stage-collection_lambda_flowlogs" = "cab6efc34459a63d4b59214aaa2cdf8d"
    "prod-collection_lambda_layer" = "b1c737d066d8ba72d3cb71d0dcbb1e5a"
    "prod-collection_lambda_flowlogs" = "e2d4381c21fa022bbbb510224dba3642"
  }
}