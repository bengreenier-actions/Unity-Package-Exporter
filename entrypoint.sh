#!/bin/bash
mkdir -p $(dirname $3)
dotnet run --project "/app/UnityPackageExporter/UnityPackageExporter.csproj" -project "$1" -dir "$2" -output "$3"
echo "::set-output name=artifactsPath::$3"
