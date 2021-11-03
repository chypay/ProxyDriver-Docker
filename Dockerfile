FROM nginx:1.21.3-alpine
LABEL org.opencontainers.image.authors="AH-dark"
COPY --chown=nginx:nginx web/* /usr/share/nginx/html/
COPY --chown=root:root nginx.conf /etc/nginx/conf.d/default.conf
COPY --chown=root:root cert/ /etc/nginx/conf.d/