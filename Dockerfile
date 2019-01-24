FROM ubuntu:18.04

EXPOSE 8080

RUN apt-get update && apt-get -y install openjdk-8-jdk-headless

LABEL io.openshift.s2i.scripts-url="image:///s2i"

COPY ./s2i/bin/ /s2i

USER 10000

CMD /s2i/usage
