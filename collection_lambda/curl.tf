resource "null_resource" "lightlytics-enable-realtime" {
  depends_on = [time_sleep.wait_15_seconds]
  provisioner "local-exec" {
    command    = <<EOF
        curl -X POST '${local.lightlytics_api_url}/api/v1/collection/cloudtrail/cft-event' \
          -H 'X-Lightlytics-Token: ${var.lightlytics_collection_token}' \
          -d '{"operation": "Create","Region": "${data.aws_region.current.name}","AccountId": "${var.aws_account_id}","TemplateVersion": ${var.collection_stack_version}}'
EOF
  }
}

resource "time_sleep" "wait_15_seconds" {
  depends_on = [aws_lambda_function.lightlytics-CloudWatch-lambda]
  create_duration = "15s"
}
