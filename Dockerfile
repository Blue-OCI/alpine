FROM alpine:latest

RUN apk -U upgrade

COPY --from docker pull ghcr.io/blue-oci/hardened_malloc:latest /extract /usr/local/lib/