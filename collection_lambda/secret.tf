resource "aws_secretsmanager_secret"  "ll_collection_secret" {
  name = local.collection_token_secret_name
  description = "lightlytics collection token"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "ll_collection_secret_version" {
  secret_id     = aws_secretsmanager_secret.ll_collection_secret.id
  secret_string = var.lightlytics_collection_token
}
