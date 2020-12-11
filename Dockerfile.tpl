# production environment
FROM nginx:stable-alpine
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY nginx/default.conf /etc/nginx/conf.d/
COPY /${theme} /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

