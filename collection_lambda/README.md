Lightlytics Terraform Module - Collection Lambda
===========
This module enables Lightlytics to receive real-time events for each deployment Region in your AWS account via AWS CloudTrail.


Inputs
------
| Variable Name                     | Description                             | Notes                                                                        | Type     | Required? | Default |
| :-------------------------------- | :-------------------------------------  | :----------------------------------------------------------------------------|:---------|:--------- |:--------|
| environment                       | Your environment URL including https:// | e.g "https://mike.lightlytics.com"                                           | `string` | Yes       | `null`  |
| aws_account_id                    | Your AWS account ID                     |                                                                              | `string` | Yes       | `null`  |
| lightlytics_collection_token      | Lightlytics collection token            |                                                                              | `string` | Yes       | `null`  |
| lightlytics_cloudwatch_role       | CloudWatch role arn                     |                                                                              | `string` | Yes       | `null`  |






Usage
-----

```hcl
module "lightlytics-collection" {
  source = "github.com/lightlytics-terraform/lightlytics-module/collection_lambda"
  environment                                  = "<Lightlytics_env>"
  aws_account_id                               = "lightlytics_account.<Lightlytics_provider_resource>.aws_account_id"
  lightlytics_collection_token                 = "lightlytics_account.<Lightlytics_provider_resource>.lightlytics_collection_token"
  lightlytics_cloudwatch_role                  = module.lightlytics.lightlytics_cloudwatch_role
}
```


Adding AWS provider
-----

- MUST USE THE LIGHTLYTICS PROVIDER FOR CREATING THE NEW INTEGRATION ACCOUNT:
  https://github.com/lightlytics-terraform/lightlytics-provider.git
  - Must create basic_integration module with the var -> "enable_cloudtrail=true"
