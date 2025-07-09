FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY dist/ /usr/share/nginx/html/
EXPOSE 3000
CMD ["sh", "-c", "nginx -g 'daemon off;' 2>&1 | tee -a /app-logs/app.log"]

