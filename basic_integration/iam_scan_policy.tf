resource "aws_iam_role" "lightlytics-role" {
  name = "${var.environment}-lightlytics-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::${var.lightlytics_account}:root"
      },
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "${var.lightlytics_account_externalID}"
        }
      }
    }
  ]
}
EOF
}

resource "aws_iam_policy" "lightlytics-policy1" {
  name = "${var.environment}-lightlytics-policy1"
  path = "/"
  policy = jsonencode({
    "Version" : "2012-10-17"
    "Statement" : [
      {
        Action = ["apigateway:GET", "athena:GetDataCatalog", "athena:GetWorkGroup", "athena:ListDataCatalogs", "athena:ListDatabases", "athena:ListTableMetadata", "athena:ListTagsForResource", "athena:ListWorkGroups", "autoscaling:DescribeAutoScalingGroups", "autoscaling:DescribeLaunchConfigurations", "bedrock:GetDataSource", "bedrock:GetKnowledgeBase", "bedrock:GetModelInvocationLoggingConfiguration", "bedrock:ListDataSources", "bedrock:ListFoundationModels", "bedrock:ListKnowledgeBases", "cloudformation:DescribeStackDriftDetectionStatus", "cloudformation:DescribeStackResources", "cloudformation:DescribeStacks", "cloudformation:DetectStackDrift", "cloudformation:DetectStackResourceDrift", "cloudformation:GetStackPolicy", "cloudformation:GetTemplate", "cloudformation:ListStacks", "cloudfront:GetDistribution", "cloudfront:ListDistributions", "cloudfront:ListTagsForResource", "cloudtrail:GetEventSelectors", "cloudtrail:GetTrail", "cloudtrail:GetTrailStatus", "cloudtrail:ListTags", "cloudtrail:ListTrails", "cloudwatch:GetMetricData", "cloudwatch:GetMetricStatistics", "cloudwatch:ListTagsForResource", "cognito-identity:DescribeIdentityPool", "cognito-identity:ListIdentities", "cognito-identity:ListIdentityPools", "cognito-idp:DescribeIdentityProvider", "cognito-idp:DescribeUserPool", "cognito-idp:DescribeUserPoolClient", "cognito-idp:ListGroups", "cognito-idp:ListIdentityProviders", "cognito-idp:ListResourceServers", "cognito-idp:ListUserPoolClients", "cognito-idp:ListUserPools", "cognito-idp:ListUsers", "config:DescribeConfigRules", "config:DescribeConfigurationAggregators", "config:DescribeConfigurationRecorderStatus", "config:DescribeConfigurationRecorders", "config:DescribeConformancePacks", "config:DescribeDeliveryChannels", "config:DescribeRemediationConfigurations", "config:DescribeRetentionConfigurations", "config:ListStoredQueries", "directconnect:DescribeConnectionLoa", "directconnect:DescribeConnections", "directconnect:DescribeConnectionsOnInterconnect", "directconnect:DescribeCustomerMetadata", "directconnect:DescribeDirectConnectGatewayAssociationProposals", "directconnect:DescribeDirectConnectGatewayAssociations", "directconnect:DescribeDirectConnectGatewayAttachments", "directconnect:DescribeDirectConnectGateways", "directconnect:DescribeHostedConnections", "directconnect:DescribeInterconnectLoa", "directconnect:DescribeInterconnects", "directconnect:DescribeLags", "directconnect:DescribeLoa", "directconnect:DescribeLocations", "directconnect:DescribeRouterConfiguration", "directconnect:DescribeTags", "directconnect:DescribeVirtualGateways", "directconnect:DescribeVirtualInterfaces", "dms:DescribeReplicationInstances", "dms:DescribeReplicationSubnetGroups", "dms:ListTagsForResource", "docdb-elastic:GetCluster", "docdb-elastic:ListClusters", "docdb-elastic:ListTagsForResource", "ds:DescribeDirectories", "dynamodb:DescribeContinuousBackups", "dynamodb:DescribeTable", "dynamodb:ListBackups", "dynamodb:ListTables", "dynamodb:ListTagsOfResource"],
        Effect = "Allow",
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_policy" "lightlytics-policy2" {
  name = "${var.environment}-lightlytics-policy2"
  path = "/"
  policy = jsonencode({
    "Version" : "2012-10-17"
    "Statement" : [
      {
        Action = ["ec2:DescribeAddresses", "ec2:DescribeCustomerGateways", "ec2:DescribeEgressOnlyInternetGateways", "ec2:DescribeFlowLogs", "ec2:DescribeImageAttribute", "ec2:DescribeImages", "ec2:DescribeInstances", "ec2:DescribeInternetGateways", "ec2:DescribeLaunchTemplateVersions", "ec2:DescribeManagedPrefixLists", "ec2:DescribeNatGateways", "ec2:DescribeNetworkAcls", "ec2:DescribeNetworkInterfaces", "ec2:DescribeRouteTables", "ec2:DescribeSecurityGroupRules", "ec2:DescribeSecurityGroups", "ec2:DescribeSnapshotAttribute", "ec2:DescribeSnapshots", "ec2:DescribeSubnets", "ec2:DescribeTags", "ec2:DescribeTransitGatewayAttachments", "ec2:DescribeTransitGatewayRouteTables", "ec2:DescribeTransitGateways", "ec2:DescribeVolumes", "ec2:DescribeVpcAttribute", "ec2:DescribeVpcEndpointServices", "ec2:DescribeVpcEndpoints", "ec2:DescribeVpcPeeringConnections", "ec2:DescribeVpcs", "ec2:DescribeVpnConnections", "ec2:DescribeVpnGateways", "ec2:GetManagedPrefixListEntries", "ec2:GetTransitGatewayRouteTableAssociations", "ec2:SearchTransitGatewayRoutes", "ecr:DescribeImages", "ecr:DescribeRepositories", "ecs:DescribeClusters", "ecs:DescribeContainerInstances", "ecs:DescribeServices", "ecs:DescribeTaskDefinition", "ecs:DescribeTasks", "ecs:ListClusters", "ecs:ListContainerInstances", "ecs:ListServices", "ecs:ListTagsForResource", "ecs:ListTaskDefinitions", "ecs:ListTasks", "eks:DescribeCluster", "eks:DescribeNodegroup", "eks:ListClusters", "eks:ListNodegroups", "elasticache:DescribeCacheClusters", "elasticache:DescribeCacheSubnetGroups", "elasticache:DescribeReplicationGroups", "elasticache:ListTagsForResource", "elasticfilesystem:DescribeAccessPoints", "elasticfilesystem:DescribeFileSystemPolicy", "elasticfilesystem:DescribeFileSystems", "elasticfilesystem:DescribeMountTargets", "elasticfilesystem:DescribeReplicationConfigurations", "elasticloadbalancing:DescribeListenerCertificates", "elasticloadbalancing:DescribeListeners", "elasticloadbalancing:DescribeLoadBalancerAttributes", "elasticloadbalancing:DescribeLoadBalancers", "elasticloadbalancing:DescribeRules", "elasticloadbalancing:DescribeTags", "elasticloadbalancing:DescribeTargetGroups", "elasticloadbalancing:DescribeTargetHealth", "elasticmapreduce:DescribeCluster", "elasticmapreduce:ListClusters", "elasticmapreduce:ListInstanceFleets", "elasticmapreduce:ListInstanceGroups", "elasticmapreduce:ListInstances", "es:DescribeDomainConfig", "es:DescribeDomains", "es:ListDomainNames", "es:ListTags", "events:ListRules", "events:ListTargetsByRule", "firehose:DescribeDeliveryStream", "firehose:ListDeliveryStreams", "firehose:ListTagsForDeliveryStream", "fsx:DescribeFileSystems", "glacier:GetVaultAccessPolicy", "glacier:GetVaultNotifications", "glacier:ListVaults", "glue:GetDataCatalogEncryptionSettings", "glue:GetDatabases", "glue:GetTables", "glue:GetTags", "guardduty:DescribePublishingDestination", "guardduty:GetDetector", "guardduty:GetFilter", "guardduty:GetFindings", "guardduty:GetIpSet", "guardduty:GetThreatIntelSet", "guardduty:ListDetectors", "guardduty:ListFilters", "guardduty:ListFindings", "guardduty:ListIpSets", "guardduty:ListMembers", "guardduty:ListPublishingDestinations", "guardduty:ListThreatIntelSets", "iam:GenerateServiceLastAccessedDetails", "iam:GetAccessKeyLastUsed", "iam:GetAccountAuthorizationDetails", "iam:GetAccountPasswordPolicy", "iam:GetAccountSummary", "iam:GetGroupPolicy", "iam:GetInstanceProfile", "iam:GetPolicy", "iam:GetPolicyVersion", "iam:GetRole", "iam:GetRolePolicy", "iam:GetSamlProvider", "iam:GetServiceLastAccessedDetails", "iam:GetUserPolicy", "iam:ListAccessKeys", "iam:ListAccountAliases", "iam:ListAttachedGroupPolicies", "iam:ListAttachedRolePolicies", "iam:ListAttachedUserPolicies", "iam:ListGroupPolicies", "iam:ListGroups", "iam:ListGroupsForUser", "iam:ListInstanceProfiles", "iam:ListMfaDevices", "iam:ListPolicies", "iam:ListRolePolicies", "iam:ListRoleTags", "iam:ListRoles", "iam:ListSamlProviders", "iam:ListUserPolicies", "iam:ListUserTags", "iam:ListUsers", "inspector2:ListFindingAggregations", "inspector2:ListFindings"],
        Effect = "Allow",
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_policy" "lightlytics-policy3" {
  name = "${var.environment}-lightlytics-policy3"
  path = "/"
  policy = jsonencode({
    "Version" : "2012-10-17"
    "Statement" : [
      {
        Action = ["kafka:ListClusters", "kendra:DescribeDataSource", "kendra:DescribeIndex", "kendra:ListDataSources", "kendra:ListIndices", "kinesis:DescribeStream", "kinesis:ListStreams", "kinesis:ListTagsForStream", "kms:ListKeyRotations", "lambda:GetFunction", "lambda:GetPolicy", "lambda:GetProvisionedConcurrencyConfig", "lambda:ListAliases", "lambda:ListEventSourceMappings", "lambda:ListFunctionUrlConfigs", "lambda:ListFunctions", "lambda:ListLayers", "lambda:ListProvisionedConcurrencyConfigs", "lambda:ListTags", "lambda:ListVersionsByFunction", "logs:DescribeLogGroups", "macie2:DescribeBuckets", "macie2:GetFindings", "macie2:ListFindings", "mq:DescribeBroker", "mq:DescribeConfiguration", "mq:DescribeUser", "mq:ListBrokers", "network-firewall:DescribeFirewall", "network-firewall:DescribeFirewallPolicy", "network-firewall:ListFirewallPolicies", "network-firewall:ListFirewalls", "organizations:DescribeAccount", "organizations:DescribeOrganization", "organizations:DescribePolicy", "organizations:ListPolicies", "organizations:ListTargetsForPolicy", "rds:DescribeDBClusters", "rds:DescribeDBInstances", "rds:DescribeDbClusterSnapshotAttributes", "rds:DescribeDbClusterSnapshots", "rds:DescribeDbInstances", "rds:DescribeDbSnapshotAttributes", "rds:DescribeDbSnapshots", "rds:DescribeDbSubnetGroups", "rds:ListTagsForResource", "redshift:DescribeClusterSubnetGroups", "redshift:DescribeClusters", "redshift:DescribeLoggingStatus", "route53:GetDnssec", "route53:GetHostedZone", "route53:ListHostedZones", "route53:ListQueryLoggingConfigs", "route53:ListResourceRecordSets", "route53:ListTagsForResources", "s3:GetAccelerateConfiguration", "s3:GetAccountPublicAccessBlock", "s3:GetBucketAcl", "s3:GetBucketLocation", "s3:GetBucketLogging", "s3:GetBucketObjectLockConfiguration", "s3:GetBucketPolicy", "s3:GetBucketPolicyStatus", "s3:GetBucketPublicAccessBlock", "s3:GetBucketTagging", "s3:GetBucketVersioning", "s3:GetBucketWebsite", "s3:GetEncryptionConfiguration", "s3:GetIntelligentTieringConfiguration", "s3:GetLifecycleConfiguration", "s3:GetReplicationConfiguration", "s3:ListAllMyBuckets", "sagemaker:DescribeCodeRepository", "sagemaker:DescribeDomain", "sagemaker:DescribeImage", "sagemaker:DescribeNotebookInstance", "sagemaker:DescribeUserProfile", "sagemaker:ListCodeRepositories", "sagemaker:ListDomains", "sagemaker:ListImages", "sagemaker:ListNotebookInstances", "sagemaker:ListTags", "sagemaker:ListUserProfiles", "ses:GetConfigurationSet", "ses:GetDedicatedIpPool", "ses:GetEmailIdentity", "ses:ListConfigurationSets", "ses:ListDedicatedIpPools", "ses:ListEmailIdentities", "ses:ListSuppressedDestinations", "sns:GetTopicAttributes", "sns:ListSubscriptionsByTopic", "sns:ListTagsForResource", "sns:ListTopics", "sqs:GetQueueAttributes", "sqs:ListQueueTags", "sqs:ListQueues", "sso:DescribePermissionSet", "sso:GetInlinePolicyForPermissionSet", "sso:ListAccountsForProvisionedPermissionSet", "sso:ListInstances", "sso:ListPermissionSets", "storagegateway:DescribeGatewayInformation", "storagegateway:DescribeNfsFileShares", "storagegateway:DescribeSmbFileShares", "storagegateway:ListFileShares", "storagegateway:ListGateways", "wafv2:GetLoggingConfiguration", "wafv2:GetRuleGroup", "wafv2:GetWebACL", "wafv2:ListResourcesForWebACL", "wafv2:ListRuleGroups", "wafv2:ListWebACLs", "workspaces:DescribeWorkspaces", "workspaces:DescribeWorkspacesConnectionStatus"],
        Effect = "Allow",
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lightlytics-role-attach-global1" {
  role = aws_iam_role.lightlytics-role.name
  policy_arn = aws_iam_policy.lightlytics-policy1.arn
}
resource "aws_iam_role_policy_attachment" "lightlytics-role-attach-global2" {
  role = aws_iam_role.lightlytics-role.name
  policy_arn = aws_iam_policy.lightlytics-policy2.arn
}
resource "aws_iam_role_policy_attachment" "lightlytics-role-attach-global3" {
  role = aws_iam_role.lightlytics-role.name
  policy_arn = aws_iam_policy.lightlytics-policy3.arn
}
