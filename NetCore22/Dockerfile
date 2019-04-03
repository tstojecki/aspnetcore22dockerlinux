FROM microsoft/dotnet:2.2-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM microsoft/dotnet:2.2-sdk AS build
WORKDIR /src
COPY ["NetCore22/NetCore22.csproj", "NetCore22/"]
RUN dotnet restore "NetCore22/NetCore22.csproj"
COPY . .
WORKDIR "/src/NetCore22"
RUN dotnet build "NetCore22.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "NetCore22.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "NetCore22.dll"]