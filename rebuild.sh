SKIPTESTS=
if [ "$1" == "skip" ]; then
    SKIPTESTS="-DskipTests"
fi
mvn -f ../assellion/pom.xml clean install $SKIPTESTS
docker-compose stop assellion-api
docker-compose rm -f assellion-api
docker-compose build assellion-api
docker-compose up -d assellion-api
