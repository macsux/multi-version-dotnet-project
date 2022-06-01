FROM mcr.microsoft.com/dotnet/sdk:6.0 AS net60
FROM mcr.microsoft.com/dotnet/sdk:3.1 AS net31
COPY --from=net60 ["/usr/share/dotnet","/usr/share/dotnet"]
COPY --from=net60 ["/usr/bin/dotnet","/usr/bin/dotnet"]
