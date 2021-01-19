FROM ubuntu:groovy

RUN echo $INPUT_CLANG_FORMAT_VERSION
RUN echo $clang_format_version
RUN apt-get update && apt-get install -y --no-install-recommends clang-format-$INPUT_CLANG_FORMAT_VERSION

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
