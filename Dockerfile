FROM fluent/fluent-bit:latest

WORKDIR /fluent-bit

COPY conf/fluent-bit.conf /fluent-bit/conf/fluent-bit.conf
COPY conf/parsers.conf /fluent-bit/conf/parsers.conf
COPY conf/parse_csv_full.lua /fluent-bit/conf/parse_csv_full.lua

VOLUME /csv_parser

CMD ["/fluent-bit/bin/fluent-bit", "-c", "/fluent-bit/conf/fluent-bit.conf"]