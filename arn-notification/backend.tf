// terraform {
//     backend "s3" {
//         encrypt         = true
//         bucket          = "aws-infra-shared-tools-tf-state"
//         dynamodb_table  = "aws-infra-shared-tools-tf-state"
//         region          = "us-east-2"
//         key             = "aws-tasks/emailltask.tfstate"
//     }
// }