# Dockerfile — ASD static site on Fly.io via Caddy
# Serves files from /srv on port 8080

FROM caddy:2-alpine

# Caddy config
COPY Caddyfile /etc/caddy/Caddyfile

# Copy baked site (keep ASD paths intact)
# Make sure you've baked locally so parametric-static/* exists
COPY parametric-static /srv

# Healthcheck is optional; Fly will treat 200 OK as healthy
EXPOSE 8080
