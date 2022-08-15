variable "collection-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "ca0ea8926b716122f6824e453a1dfd4c"
    "stage-collection_lambda_cloudwatch" = "c572fc2acd8ad1409e71991efcc5792f"
    "prod-collection_lambda_layer" = "b1c737d066d8ba72d3cb71d0dcbb1e5a"
    "prod-collection_lambda_cloudwatch" = "e2d4381c21fa022bbbb510224dba3642"
  }
}