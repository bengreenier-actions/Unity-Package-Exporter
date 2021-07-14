# Container image that runs your code
FROM mcr.microsoft.com/dotnet/sdk:2.1

RUN mkdir -p /app
COPY . /app

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["/app/entrypoint.sh"]
