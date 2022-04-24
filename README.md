Lightlytics terraform module for AWS
===========

A terraform module connecting AWS account to [Lightlytics](https://www.lightlytics.com/).

Module Input Variables
----------------------

- `environment`                       = Lightlytics environment name
- `aws_account_id`                    = AWS account ID
- `Lightlytics_internal_accountID`    = Lightlytics external id
- `lightlytics_account_externalID`    = Lightlytics external id
- `lightlytics_collection_token`      = Lightlytics collection token


Usage
-----

```hcl
module "lightlytics" {
  providers = {
    aws = aws.us-east-1
  }
  source = "github.com/lightlytics-terraform/lightlytics-module/basic_integration"
  environment                                  = "<Lightlytics_env>"
  aws_account_id                               = "lightlytics_account.<Lightlytics_provider_resource>.aws_account_id"
  Lightlytics_internal_accountID               = "lightlytics_account.<Lightlytics_provider_resource>.id"
  lightlytics_account_externalID               = "lightlytics_account.<Lightlytics_provider_resource>.external_id"
  lightlytics_auth_token                       = "lightlytics_account.<Lightlytics_provider_resource>.account_auth_token"
}

module "lightlytics-collection-us-east-1" {
  source = "github.com/lightlytics-terraform/lightlytics-module/collection_lambda"
  providers = {
    aws = aws.us-east-1
  }
  environment                                  = "<Lightlytics_env>"
  aws_account_id                               = "lightlytics_account.<Lightlytics_provider_resource>.aws_account_id"
  lightlytics_collection_token                 = "lightlytics_account.<Lightlytics_provider_resource>.lightlytics_collection_token"
  lightlytics_cloudwatch_role                  = module.lightlytics.lightlytics_cloudwatch_role
}

module "flow-logs-us-east-1" {
  source = "github.com/lightlytics-terraform/lightlytics-module/flowlogs_lambda"
  providers = {
    aws = aws.us-east-1
  }
  environment                                  = "<Lightlytics_env>"
  lightlytics_collection_token                 = "lightlytics_account.<Lightlytics_provider_resource>.lightlytics_collection_token"
  vpc_flowlogs_ids                             = [""]
  lightlytics_flowlogs_role                    = module.lightlytics-module.lightlytics_flowlogs_role
}
```


## Feature notes


basic_integration
-----

- Create cloud watch


collection_lambda
-----

- Create collection lambda


flowlogs_lambda
-----

- Create flowlogs lambda

cloudwatch_templates
-----

- Cloudwatch rules templates.



## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.70.0 |
