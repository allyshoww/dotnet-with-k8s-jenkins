pipeline {
  agent any
  stages {
  stage('Building pipeline'){
      steps{
        echo "Running Build - ${env.BUILD_TAG} on ${env.JENKINS_URL}"
        }
  stage('Clone') {
      steps {
        script {
            sh ('whoami')
            sh ('sudo rm -rf dotnet-with-k8s-jenkins/ && git clone https://github.com/allyshoww/dotnet-with-k8s-jenkins')
            //sh 'sudo docker login -u "${docker-user}" -p "${docker-pw}"'
            sh ('cd dotnet-with-k8s-jenkins && sudo dotnet publish -c Release && sudo docker build . -t allysono/hw:latest')
            //sh ('sudo docker build . -t docker.io/allysono/hw:latest')
            sh ('sudo docker push allysono/hw:latest')
            sh ('pwd && ls -lah && sudo kubectl apply -f deployment.yaml')
            //sh ('sudo kubectl set image deployment/corecounter-deployment corecounter=allysono/hw:latest')
            sh ('sudo kubectl get pods')
        }   
    }
}
  stage('Building Pipeline') {
      steps {
        script {
          echo 'Stage Teste-02'
        }
      }
    }
  }
}
}
