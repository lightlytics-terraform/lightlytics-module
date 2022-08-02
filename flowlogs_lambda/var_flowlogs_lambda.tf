variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "ba24448fcfadd9f956b66a5c96f201b0"
    "stage-collection_lambda_flowlogs" = "068deaa6ce2451880d3a4217597e8867"
    "prod-collection_lambda_layer" = "b1c737d066d8ba72d3cb71d0dcbb1e5a"
    "prod-collection_lambda_flowlogs" = "e2d4381c21fa022bbbb510224dba3642"
  }
}