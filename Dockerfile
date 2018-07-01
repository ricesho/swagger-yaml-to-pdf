FROM alpine:3.7

RUN apk  --no-cache --update-cache \
    add curl \
        ruby \
        ruby-rdoc \
        ruby-irb \
        ruby-json \
        ruby-dev \
        openjdk8-jre-base  

RUN curl -O http://central.maven.org/maven2/io/github/swagger2markup/swagger2markup-cli/1.3.1/swagger2markup-cli-1.3.1.jar
    
RUN gem install asciidoctor-pdf --pre

RUN mkdir volume

COPY swaggerYamlToPdf.sh .
