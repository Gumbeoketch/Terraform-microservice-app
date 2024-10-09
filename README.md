# take-home-PT1
INSTALL AWS CLI
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

AUTHENTICATE TO CLI USING IAM USER WITH TERRAFORM PERMISSION
aws configure

INSTALL TERRAFORM
https://developer.hashicorp.com/terraform/install

APPLY TERRAFORM FILES
terraform init
terraform validate
terraform validate
terraform plan
terraform apply

ACTIVATE ECR ON CONSOLE AND BUILD PUSH IMAGE
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <aws_account_id>.dkr.ecr.us-east-1.amazonaws.com
docker build -t my-app .
docker tag my-app:latest <aws_account_id>.dkr.ecr.us-east-1.amazonaws.com/my-app:latest
docker push <aws_account_id>.dkr.ecr.us-east-1.amazonaws.com/my-app:latest


DEPLOY THE APP
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
