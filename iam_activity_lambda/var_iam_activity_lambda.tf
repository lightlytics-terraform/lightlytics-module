variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "2a1ace0f23dd1fbf879f8d71a0c7256c"
    "stage-collection_lambda_iam_activity" = "6c0c66c12749eb83543b83c0b2c27e69"
    "prod-collection_lambda_layer" = "24ad10212c195b9a805df9b82493877b"
    "prod-collection_lambda_iam_activity" = "6c0c66c12749eb83543b83c0b2c27e69"
  }
}