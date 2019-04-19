FROM openjdk:8-jre-alpine

ENV VERSION 2.0.29

RUN apk --no-cache add curl

RUN curl -o /crowdin-cli.jar -SL https://github.com/crowdin/crowdin-cli-2/releases/download/v$VERSION/crowdin-cli-$VERSION.jar

ENTRYPOINT [ "java", "-jar", "/crowdin-cli.jar" ]
