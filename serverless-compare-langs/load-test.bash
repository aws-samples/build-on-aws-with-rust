set -x

stacks=(
    go-serverless-demo
    java-graalvm-serverless-demo
    rust-serverless-demo
)

for stack in "${stacks[@]}"
do
   : 
   echo "stack name:" $stack

   # aws cloudformation describe-stacks --stack-name "$stack"
  
   API_URL=$(
      aws cloudformation describe-stacks --stack-name $stack \
      --query 'Stacks[0].Outputs[?OutputKey==`ApiUrl`].OutputValue' \
      --output text)
   echo $API_URL
    artillery run \
      --quiet \
      --output "$stack".json \
      --target "$API_URL" \
      load-test.yml
done

# $ TODO: fix typescript
API_URL=$(aws cloudformation describe-stacks --stack-name typescript-serverless-demo \
  --query 'Stacks[0].Outputs[?OutputKey==`ApiURL`].OutputValue' \
  --output text)
echo $API_URL
artillery run \
  --quiet \
  --output typescript-serverless-demo.json \
  --target "$API_URL" \
  load-test.yml

# TODO: fix kotlin
API_URL=$(aws cloudformation describe-stacks --stack-name kotlin-serverless-demo \
  --query 'Stacks[0].Outputs[?OutputKey==`KotlinApiUrl`].OutputValue' \
  --output text)
echo $API_URL
artillery run \
  --quiet \
  --output kotlin-serverless-demo.json \
  --target "$API_URL" \
  load-test.yml

# aws cloudformation describe-stacks --stack-name $STACK_NAME \
#   --query 'Stacks[0].Outputs[?OutputKey==`ApiURL`].OutputValue' \
#   --output text

# echo typescript



# STACK_NAME=typescript-serverless-demo

# API_URL=$(aws cloudformation describe-stacks --stack-name $STACK_NAME \
#   --query 'Stacks[0].Outputs[?OutputKey==`ApiURL`].OutputValue' \
#   --output text)

# artillery run --quiet load-test.yml --target "$API_URL"

# STACK_NAME=rust-serverless-demo

# API_URL=$(aws cloudformation describe-stacks --stack-name $STACK_NAME \
#   --query 'Stacks[0].Outputs[?OutputKey==`ApiURL`].OutputValue' \
#   --output text)

# artillery run --quiet load-test.yml --target "$API_URL"