variable "iam-activity-lambda" {
  type = map(string)
  default = {
    "stage-collection_lambda_layer" = "55f619cd0bd3af151ce3989794734413"
    "stage-collection_lambda_iam_activity" = "d063e504d1aca3210e0e2b960857fc37"
    "prod-collection_lambda_layer" = "61296550a16ec01e74ea5f6683b440e5"
    "prod-collection_lambda_iam_activity" = "d063e504d1aca3210e0e2b960857fc37"
  }
}