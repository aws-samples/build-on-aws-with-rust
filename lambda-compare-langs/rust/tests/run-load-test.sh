#! bash

set -x

STACK_NAME=rust-serverless-demo

API_URL=$(aws cloudformation describe-stacks --stack-name $STACK_NAME \
  --query 'Stacks[0].Outputs[?OutputKey==`ApiUrl`].OutputValue' \
  --output text)
echo "$API_URL"

artillery run load-test.yml --target "$API_URL"