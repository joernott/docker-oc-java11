FROM registry.ott-consult.de/oc/base:latest
LABEL MAINTAINER="joern.ott@ott-consult.de"

ENV JAVA_HOME=/usr/java/latest \
    GIT_COMMIT="x" \
    IMAGE_HISTORY="x"

COPY src /

RUN /tmp/install/oc-java.sh
