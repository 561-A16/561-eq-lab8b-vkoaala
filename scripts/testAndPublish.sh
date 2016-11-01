#!bin/bash
set -ev
dotnet restore
dotnet test ./webapp.unittests
rm -rf $HOME/publish/*
#cd webapp

dotnet publish ./webapp --configuration release --output $HOME/publish
