

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 465781362998.dkr.ecr.us-east-1.amazonaws.com

docker build . -t lambda
docker tag lambda 465781362998.dkr.ecr.us-east-1.amazonaws.com/lambda
docker push 465781362998.dkr.ecr.us-east-1.amazonaws.com/lambda


