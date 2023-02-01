resource "null_resource" "lightlytics-enable-account" {
  depends_on = [aws_iam_role_policy_attachment.lightlytics-role-attach-global1, aws_iam_role_policy_attachment.lightlytics-role-attach-global2, aws_iam_role.lightlytics-role, time_sleep.wait_15_seconds]
  provisioner "local-exec" {
    command    = <<EOF
        curl -X POST '${local.lightlytics_api_url}/graphql' \
          -H 'Content-Type: application/json' \
          -H 'Authorization: Bearer ${var.lightlytics_auth_token}' \
          -d '{"query":"mutation AccountAcknowledge($input: AccountAckInput){\r\n accountAcknowledge(account: $input)\r\n }","variables": {"input": {"lightlytics_internal_account_id":"${var.Lightlytics_internal_accountID}","role_arn":"arn:aws:iam::${var.aws_account_id}:role/${var.environment}-lightlytics-role","account_type":"AWS","account_aliases":"","aws_account_id":"${var.aws_account_id}","stack_region":"${data.aws_region.current.name}","stack_id":"","init_stack_version":${var.init_stack_version}}}}'
EOF
  }
}

resource "time_sleep" "wait_15_seconds" {
  depends_on = [aws_iam_role_policy_attachment.lightlytics-role-attach-global1, aws_iam_role_policy_attachment.lightlytics-role-attach-global2, aws_iam_role.lightlytics-role]
  create_duration = "15s"
}
