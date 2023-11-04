FROM ubuntu:22.04

ENV DEBUG=false \
    TEST_VAR="Hello World"

RUN set -x && \
    apt-get update && \
    apt-get install --no-install-recommends -y nano=6.2-1 &&\
    rm -rf /var/lib/apt/lists/*


COPY test_content.txt /opt/test/test_content.txt

RUN echo $TEST_VAR > /opt/test/test_content.txt

VOLUME [ "/opt/test" ]
WORKDIR /opt/test

ENTRYPOINT [ "bash" ]
CMD []
