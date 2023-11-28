#!/usr/bin/env bash
set -ex

go run . \
    --http-address=0.0.0.0:8080 \
    --whitelist-domain=.hocdevops.me \
    --provider=oidc \
    --cookie-domain=.hocdevops.me \
    --email-domain="*" \
    --cookie-secret=y0ur_secret_v3ry_l0ngggg \
    --client-id=oauth-proxy \
    --client-secret=pPkhZ6XcRc1DifXGf5f65ZD2NRKLt70j \
    --oidc-issuer-url=https://keycloak.elofun.net/realms/master \
    --redirect-url=http://192.168.2.103:8080/oauth2/callback
