variable "flowlogs-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "c79c08494ec545de936ca30535133fd0"
    "stage-collection_lambda_flowlogs" = "e2d4381c21fa022bbbb510224dba3642"
    "prod-collection_lambda_layer" = "b1c737d066d8ba72d3cb71d0dcbb1e5a"
    "prod-collection_lambda_flowlogs" = "e2d4381c21fa022bbbb510224dba3642"
  }
}