FROM nginx:alpine

WORKDIR /app
COPY . .
COPY nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/proxy.conf /etc/nginx/conf.d/.

CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]
