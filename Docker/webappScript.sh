#!bin/bash

cd src/webapp
dotnet restore

cd ../webapp.unittests
dotnet restore
dotnet test
