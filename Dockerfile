# Container image that runs your code
FROM mcr.microsoft.com/dotnet/sdk:2.1

USER root
RUN mkdir -p /app
COPY . /app
WORKDIR /app
RUN chown -R root:root /app
ENTRYPOINT ["/usr/bin/dotnet", "run", "-p", "/app/UnityPackageExporter"]
