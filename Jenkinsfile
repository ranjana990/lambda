

pipeline{
  agent any
env {
BRANCH_NAME "master"
}


  stages {
     stage ('Build')
{
  steps {
 sh "sudo docker build . -t lambda"
 sh "sudo docker tag lambda:latest 465781362998.dkr.ecr.us-east-1.amazonaws.com/lambda:latest
}
}

stage('login')
{
  steps {
sh "sudo aws ecr get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin 465781362998.dkr.ecr.us-east-1.amazonaws.com"
}
}
stage('Push')
{
  steps {
  sh "sudo docker push 465781362998.dkr.ecr.us-east-1.amazonaws.com/lambda:latest"
}
}



}

}
