// AWS S3: Generates a signed URL for the bucket
cloud.aws.s3.sign_url {
    bucket = "${1:bucket}"
    region = "${2:|us-east-2|us-east-1|us-west-1|us-west-2|af-south-1|ap-east-1|ap-south-2|ap-southeast-3|ap-southeast-5|ap-southeast-4|ap-south-1|ap-northeast-3|ap-northeast-2|ap-southeast-1|ap-southeast-2|ap-southeast-7|ap-northeast-1|ca-central-1|ca-west-1|eu-central-1|eu-west-1|eu-west-2|eu-south-1|eu-west-3|eu-south-2|eu-north-1|eu-central-2|il-central-1|mx-central-1|me-south-1|me-central-1|sa-east-1|us-gov-east-1|us-gov-west-1|}"
    key = "${3:key}"
    secret = "${4:secret}"
    file_key = "${5:file_key}"
    ttl = ${6:300}
}  as ${7:\$signed_url}