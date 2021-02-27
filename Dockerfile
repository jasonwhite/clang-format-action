FROM ubuntu:groovy

RUN echo "hello"
        echo $INPUT_CLANG_FORMAT_VERSION
        echo $clang_format_version
        $INPUT_CLANG_FORMAT_VERSION > /clang_format_version
        cat /clang_format_version
        apt-get update && apt-get install -y --no-install-recommends clang-format-$INPUT_CLANG_FORMAT_VERSION

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
