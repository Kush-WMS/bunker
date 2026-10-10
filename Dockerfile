# Página estática de etiquetas servida pelo Caddy; o Railway injeta $PORT.
FROM caddy:2-alpine
COPY index.html /srv/index.html
CMD caddy file-server --root /srv --listen :${PORT:-8080}
