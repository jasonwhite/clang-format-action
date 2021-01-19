FROM ubuntu:groovy

RUN apt-get update && apt-get install -y --no-install-recommends clang-format-$INPUT_CLANG_FORMAT_VERSION

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
