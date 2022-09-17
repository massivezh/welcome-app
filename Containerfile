FROM php:7.3-alpine3.14
COPY . /usr/src/myapp

RUN rm -f /usr/src/myapp/{Containerfile,README.md} 

WORKDIR /usr/src/myapp
EXPOSE 80
CMD [ "php", "./index.php" ]
