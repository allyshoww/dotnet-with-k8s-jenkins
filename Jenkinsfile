pipeline {
  agent any
  stages {
  stage('Clone') {
      steps {
        script {
            sh 'whoami'
            sh 'git clone https://github.com/allyshoww/dotnet-with-k8s-jenkins'
            //sh 'sudo docker login -u "${docker-user}" -p "${docker-pw}"'
            sh ('ls -lah')
            sh ('docker build . -t allysono/hw:latest')
            sh ('docker push allysono/hw:latest')
            sh 'pwd && cd dotnet-with-k8s-jenkins && ls -lah && sudo kubectl apply -f deployment.yaml'
            sh 'sudo kubectl set image deployment/corecounter-deployment corecounter=allysono/hw:latest'
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
