pipeline{
  agent any
  parameters {
   string ACCOUNT_ID: '465781362998',
   string region: 'us-east-1',
  }

  stages {
     stage ('Build')
{
  steps {
 sh " service docker start"
 sh " docker build . -t lambda"
 sh " docker tag lambda:latest $ACCOUNT_ID.dkr.ecr.$region.amazonaws.com/lambda:latest"
}
}

stage('login')
{
  steps {
sh "sudo aws ecr get-login-password --region $region | sudo docker login --username AWS --password-stdin $ACCOUNT_ID.dkr.ecr.$region.amazonaws.com"
}
}
stage('Push')
{
  steps {
  sh "sudo docker push $ACCOUNT_ID.dkr.ecr.$region.amazonaws.com/lambda:latest"
}
}



}

}
