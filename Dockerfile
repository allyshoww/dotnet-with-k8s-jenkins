FROM mcr.microsoft.com/dotnet/aspnet:5.0
LABEL Project=Dotnet-Jenkins-k8s
LABEL ImageName=hw:100
LABEL Teste=Teste1
COPY bin/Release/net5.0/publish/ App/
WORKDIR /App
ENTRYPOINT ["dotnet", "NetCore.Docker.dll"]
ENV DOTNET_EnableDiagnostics=0