variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "55f619cd0bd3af151ce3989794734413"
    "stage-collection_lambda_flowlogs" = "e6982cd08f4908d456f7a531706f62a8"
    "prod-collection_lambda_layer" = "1463164a7c6d8ed42ce4d8f2eec1812b"
    "prod-collection_lambda_flowlogs" = "afbdb22bc6257a45884717530826d960"
  }
}