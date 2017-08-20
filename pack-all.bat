@echo off
powershell "$versionSuffix = '%1'; $output = (Resolve-Path .); @('Build.PolicyReport', '[Core]', 'Runtime') | %% { dotnet restore /p:VersionSuffix=$versionSuffix; dotnet pack $_ --version-suffix=$versionSuffix --output $output --configuration Release /p:UnbreakablePolicyReportEnabled=false }"