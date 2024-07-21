FROM alpine:latest

RUN apk -U upgrade \
&& apk --no-cache add libstdc++

COPY --from=ghcr.io/blue-oci/hardened_malloc:latest /extract /usr/local/lib/

ENV LD_PRELOAD="/usr/local/lib/libhardened_malloc.so"
