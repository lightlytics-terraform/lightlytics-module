resource "aws_secretsmanager_secret"  "ll_flowlogs_collection_secret" {
  name = local.collection_flowlogs_token_secret_name
  description = "lightlytics collection token"
}

resource "aws_secretsmanager_secret_version" "ll_flowlogs_collection_secret_version" {
  secret_id     = aws_secretsmanager_secret.ll_flowlogs_collection_secret.id
  secret_string = var.lightlytics_collection_token
}