data "aws_s3_bucket" "iam_activity_bucket" {
  bucket = var.iam_activity_bucket_name
}

resource "aws_s3_bucket_notification" "lightlytics-lambda-s3-trigger" {
  bucket = data.aws_s3_bucket.iam_activity_bucket.id
  lambda_function {
    lambda_function_arn = aws_lambda_function.lightlytics-IamActivity-lambda.arn
    events              = ["s3:ObjectCreated:*"]
  }
  depends_on = [aws_lambda_permission.lightlytics-iam-activity-logs-allow-lambda-s3]
}
