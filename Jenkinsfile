pipeline {
  agent any
  stages {
  stage('Clone') {
      steps {
        script {
            //sh 'rm -rf /dotnet-with-k8s-jenkins && git clone https://github.com/allyshoww/dotnet-with-k8s-jenkins.git'
            sh 'whoami'
            //sh 'docker login -u "${docker-user}" -p "${docker-pw}"'
            sh 'cd dotnet-with-k8s-jenkins && pwd && sudo su - && sudo kubectl apply -f deployment.yaml'
            //sh 'sleep 60'
            //sh 'kubectl get pods'
        }   
    }
}
  stage('Stage 2') {
      steps {
        script {
          echo 'Stage Teste'
        }
      }
    }
  }
}
// node {
//     // def built_img = ''
//     // stage('Checkout git repo') {
//     //   git branch: 'master', url: params.git_repo
//     // }
//     stage('Build and push Docker image') {
//       sh(script: "git clone https://github.com/allyshoww/dotnet-with-k8s-jenkins")
//       sh(script: "cd dotnet-with-k8s-jenkins")
//       sh(script: "docker login -u ${acr_username} -p ${acr_password}", returnStdout: true)
//       sh(script: "docker build -t ${registry_url}/core-counter:${BUILD_NUMBER}", returnStdout: true)
//       sh(script: "docker push ${registry_url}/core-counter:${BUILD_NUMBER}", returnStdout: true)
//       sh(script: "docker build -t ${registry_url}/core-counter:${BUILD_NUMBER} -f src/CustomersMVC/Dockerfile .", returnStdout: true)
//       sh(script: "docker push ${registry_url}/core-counter:${BUILD_NUMBER}", returnStdout: true)
//     }
//     stage('Unit Tests') {
//       sh 'hostname'
//     }
//     // stage('Browser Tests'){
//     //     parallel(
//     //         "Edge":{sh 'echo test'},
//     //         "Firefox":{sh 'echo test'},
//     //         "Chrome":{sh 'echo test'}
//     //         )
//     // }
//     // stage('Deploy into k8s') {
//     //   sh(script: "cat cicd/k8s.yaml | sed -e 's/build_number/${BUILD_NUMBER}/g' -e 's/YourACRName/${acr_username}/g' | kubectl apply -f - --kubeconfig /var/lib/jenkins/.kube/config", returnStdout: true)
//     // }
// }