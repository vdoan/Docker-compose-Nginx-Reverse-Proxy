FROM nginx:alpine

WORKDIR /app
COPY . .
COPY nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/proxy.conf /etc/nginx/conf.d/.

COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 80
CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]
