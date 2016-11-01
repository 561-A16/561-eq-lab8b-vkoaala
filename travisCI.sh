set -ev

docker build -t webapp:test -f ./dockerfile/test .
docker run -it --rm -v $PWD/packages:/root/.nuget/packages webapp:test
