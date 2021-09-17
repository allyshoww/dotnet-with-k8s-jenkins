pipeline {
  agent any
  stages {
  stage('Clone') {
      steps {
        script {
            sh 'whoami'
            //sh 'sudo docker login -u "${docker-user}" -p "${docker-pw}"'
            sh ('ls -lah')
            sh 'cd dotnet-with-k8s-jenkins && pwd && dotnet publish -C release && sudo kubectl apply -f deployment.yaml'
            sh 'sudo kubectl set image deployment/corecounter-deployment corecounter=allysono/hw:latest'
            sh 'sleep 60'
            sh 'sudo kubectl get pods'
        }   
    }
}
  stage('Stage 2') {
      steps {
        script {
          echo 'Stage Teste-02'
        }
      }
    }
  }
}
