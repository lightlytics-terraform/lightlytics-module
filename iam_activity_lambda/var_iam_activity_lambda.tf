variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "45045478d41c1e6a160e3fe80597c3d2"
    "stage-collection_lambda_iam_activity" = "7cb5ab0ae7fce48eb44277ae6ed572e2"
    "prod-collection_lambda_layer" = "24ad10212c195b9a805df9b82493877b"
    "prod-collection_lambda_iam_activity" = "6c0c66c12749eb83543b83c0b2c27e69"
  }
}