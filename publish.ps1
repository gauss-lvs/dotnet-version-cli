dotnet version -f .\src\dotnet-version.csproj build `
  && dotnet build .\src\dotnet-version.csproj -c Release `
  && dotnet pack .\src\dotnet-version.csproj -o ".nupkgs" -c Release `
  && Copy-Item ".nupkgs\*.nupkg" $env:GAUSS_NUGET_FOLDER `
  && dotnet nuget push ".nupkgs\*.nupkg" --source gauss --api-key $env:GAUSS_NUGET_API_KEY --skip-duplicate `
  && Remove-Item ".nupkgs" -Recurse `
  && git push
