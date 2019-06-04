# Create ECR (if not already existing)
aws ecr create-repository --repository-name "gpt-2-flask"

ACCOUNT_ID=780285191874
$(aws ecr get-login --no-include-email --region us-east-1)

docker build -t gpt-2-flask .
docker tag gpt-2-flask-api:latest 780285191874.dkr.ecr.us-east-1.amazonaws.com/gpt-2-flask:latest
docker push 780285191874.dkr.ecr.us-east-1.amazonaws.com/gpt-2-flask:latest
