FROM nginx:alpine

COPY site-root/* /usr/share/nginx/html

EXPOSE 80
