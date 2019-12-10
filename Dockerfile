FROM mcr.microsoft.com/dotnet/core/sdk:3.0 AS build

WORKDIR /home/node2/jenkins/workspace/coreapi

COPY netcore-api.sln .
COPY /home/node2/jenkins/workspace/coreapi/api/netcore-api.csproj ./home/node2/jenkins/workspace/coreapi/api/netcore-api.csproj

RUN dotnet restore

COPY . ./

RUN dotnet publish ./home/node2/jenkins/workspace/coreapi/api/netcore-api.csproj -c Release -o /app/

FROM mcr.microsoft.com/dotnet/core/aspnet:3.0 AS runtime

COPY --from=build /app/ /app/
WORKDIR /app

ENTRYPOINT ["dotnet", "netcore-api.dll"]