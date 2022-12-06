terraform {
  required_providers {
    lightlytics = {
      version = "0.2"
      source  = "lightlytics.com/api/lightlytics"
    }
  }
}

provider "aws" {
  access_key = "Your_AWS_Access_Key"  
  secret_key = "Your_AWS_Secret_Key"  
  region     = "Your_AWS_Account_Region" 
}

provider "lightlytics" {
  alias        = "test-integration"
  host         = "<https://<env_name>.lightlytics.com>"  ## Your environment URL, including https://
  username     = "<Your_Lightlytics_Login_Email>"  
  password     = "<Your_Lightlytics_Login_Password>"
  workspace_id = "<Your_Lightlytics_Workspace_ID>"       ## Can be obtained from Lightlytics platform, if not specified, it will use the first WS
}

resource "lightlytics_account" "awsmike" { ## awsmike can be changed. If changed, change in all respective vars
  provider       = lightlytics.test-integration
  account_type   = "AWS"
  aws_account_id = "<Your_AWS_Account_ID>"                                ## Desired aws account nummber
  display_name   = "<Your_Desired_Lightlytics_Integration_Display_Name>"  ## Your integration display name within Lightlytics platform
  stack_region   = "us-east-1"                                            ## The primary region where Lightlytics read access resources will be created 
  aws_regions    = ["us-east-1"]                                          ## List of desired regions to be scanned 
}

module "lightlytics" {
  source = "github.com/lightlytics-terraform/lightlytics-module/basic_integration"
  environment                    = ""  ## Your organization name from the URL, only the name e.g mike from mike.lightlytics.com
  aws_account_id                 = lightlytics_account.awsmike.aws_account_id
  Lightlytics_internal_accountID = lightlytics_account.awsmike.id
  lightlytics_account_externalID = lightlytics_account.awsmike.external_id
  lightlytics_auth_token         = lightlytics_account.awsmike.account_auth_token
}

module "lightlytics-collection-us-east-1" {
  source = "github.com/lightlytics-terraform/lightlytics-module/collection_lambda"
  environment                  = ""  ## Your organization name from the URL, only the name e.g mike from mike.lightlytics.com
  aws_account_id               = lightlytics_account.awsmike.aws_account_id
  lightlytics_collection_token = lightlytics_account.awsmike.lightlytics_collection_token
  lightlytics_cloudwatch_role  = module.lightlytics.lightlytics_cloudwatch_role
}
