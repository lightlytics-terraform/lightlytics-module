variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "b94e2a4f561b96e0e7124df6db9922e3"
    "stage-collection_lambda_flowlogs" = "2fd6a6b486a0a5ccf6d4acdc63e46f68"
    "prod-collection_lambda_layer" = "ef7c88cd3ebf2e5a7fb2dddf1b61cb84"
    "prod-collection_lambda_flowlogs" = "2fd6a6b486a0a5ccf6d4acdc63e46f68"
  }
}