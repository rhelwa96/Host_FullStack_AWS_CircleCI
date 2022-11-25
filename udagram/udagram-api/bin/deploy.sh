set -x
set -e

#eb init  udagram-api  --platform node.js --region us-east-1
#eb create --sample udagram-api-dev
eb init
eb use udagram-api-dev
eb setenv POSTGRES_HOST=@POSTGRES_HOST POSTGRES_DB=$POSTGRES_DB POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD DB_PORT=$DB_PORT PORT=$PORT AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION AWS_PROFILE=$AWS_PROFILE AWS_BUCKET=$AWS_BUCKET URL=$URL JWT_SECRET=$JWT_SECRET
eb deploy udagram-api-dev