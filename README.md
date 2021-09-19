# dotnet-with-k8s-jenkins
This is a project to test in a easy way, Jenkins pipeline with .Net and Kubernetes.

## Getting Started

### Pre Reqs
1-) A dotnet app container: In this example, we will use [this example](https://docs.microsoft.com/pt-br/dotnet/core/docker/build-container?tabs=windows) 

2-) A Jenkins Server. More information can be found [here](https://www.jenkins.io/doc/book/installing/)

3-) A Kubernetes installed. Can be [kind](https://kind.sigs.k8s.io/docs/user/quick-start/), [k3s](https://k3s.io/) or [minikube](https://minikube.sigs.k8s.io/docs/start/), no problem. 

4-) In this example, we use a Ubuntu machine to host Kuberntes and Jenkins installed in same server. 

##### Diagram
![Diagram](/img/diagram.png)

#### How to test
1-) Clone this repo in this K8s server;

2-) Build the app with command `dotnet publish -c Release`;

3-) Build the docker image with command `docker build . -t your_user_on_your_image_repo/hw:latest` - Can be dockerhub, for example;

4-) Push the image to your image repo;

5-) On deployment.yaml, line 17, change "allysono" to your username of your image repo;

6-) Run kubectl apply -f deployment.yaml

The app is a counter starting in 500. If you run the command `kubectl get pods` and after this, `kubectl attach pod-name`, you can check a counter starting in 500.

In this moment, we have a version of the container app running. And now, we will configure github with jenkins server, following [this link]

Now, we will make some modifications in app and deploy to kubernetes. 

1-) in Program.CS, you can change the line 10, modifying the value 500 to 0. And after this, you can commit the modification to github and check if app have some modification with command `kubectl get pods` and `kubectl attach pod-name`. If everything fine, the counter will start in 0, no more in 500. 

