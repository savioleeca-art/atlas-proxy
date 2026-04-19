FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf

ENV PORT=8080

CMD sh -c 'export PORT="${PORT:-8080}" && sed -i "s/\${PORT}/$PORT/g" /etc/nginx/nginx.conf && exec nginx -g "daemon off;"'
