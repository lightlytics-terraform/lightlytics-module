variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "0125793900fa26165fc47db8e7f9f4bf"
    "stage-collection_lambda_flowlogs" = "e2d4381c21fa022bbbb510224dba3642"
    "prod-collection_lambda_layer" = "b1c737d066d8ba72d3cb71d0dcbb1e5a"
    "prod-collection_lambda_flowlogs" = "e2d4381c21fa022bbbb510224dba3642"
  }
}