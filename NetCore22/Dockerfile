FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
ADD ./output /app
WORKDIR /app
EXPOSE 80
ENTRYPOINT ["dotnet", "NetCore22.dll"]