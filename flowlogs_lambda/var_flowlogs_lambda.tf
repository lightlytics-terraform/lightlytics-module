variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "b94e2a4f561b96e0e7124df6db9922e3"
    "stage-collection_lambda_flowlogs" = "2fd6a6b486a0a5ccf6d4acdc63e46f68"
    "prod-collection_lambda_layer" = "61296550a16ec01e74ea5f6683b440e5"
    "prod-collection_lambda_flowlogs" = "d063e504d1aca3210e0e2b960857fc37"
  }
}