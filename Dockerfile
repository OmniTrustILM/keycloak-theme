FROM alpine:3.24.3

LABEL org.opencontainers.image.authors="ILM <ilm@omnitrust.com>" \
      org.opencontainers.image.title="ILM Keycloak Theme" \
      org.opencontainers.image.description="Keycloak login themes for ILM" \
      org.opencontainers.image.source="https://github.com/OmniTrustILM/keycloak-theme"

RUN apk upgrade --no-cache \
    && addgroup --system --gid 10001 ilm \
    && adduser --system --home /opt/ilm --uid 10001 --ingroup ilm ilm

COPY ./custom_themes /

# Numeric, so that Kubernetes can enforce runAsNonRoot, which ILM's init-theme container sets without a runAsUser.
USER 10001
