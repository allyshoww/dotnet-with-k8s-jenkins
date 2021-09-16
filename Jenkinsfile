pipeline {
  agent any
  stages {
  stage('Clone') {
      steps {
        script {
            //sh 'rm -rf /dotnet-with-k8s-jenkins && git clone https://github.com/allyshoww/dotnet-with-k8s-jenkins.git'
            //sh 'whoami'
            //sh 'docker login -u "${docker-user}" -p "${docker-pw}"'
            sh 'cd dotnet-with-k8s-jenkins && pwd && sudo kubectl apply -f deployment.yaml'
            //sh 'sleep 60'
            //sh 'kubectl get pods'
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
