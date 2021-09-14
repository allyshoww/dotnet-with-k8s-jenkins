FROM mcr.microsoft.com/dotnet/aspnet:5.0
LABEL Name Allyson de Souza Oliveira
COPY bin/Release/net5.0/publish/ App/
WORKDIR /App
ENTRYPOINT ["dotnet", "NetCore.Docker.dll"]
ENV DOTNET_EnableDiagnostics=0