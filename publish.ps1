dotnet version -f .\src\dotnet-version.csproj build `
  && dotnet build .\src\dotnet-version.csproj -c Release `
  && dotnet pack .\src\dotnet-version.csproj -o P:\Entwicklung\NugetPackages -c Release `
  && git push