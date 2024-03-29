FROM nginx:alpine

COPY mario/www /www

COPY mario/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD (tail -F /var/log/nginx/access.log &) && exec nginx -g "daemon off;"
