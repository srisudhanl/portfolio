FROM ghcr.io/cirruslabs/flutter:3.16.9 AS build
WORKDIR /app
COPY . /app
RUN flutter pub get
RUN flutter build web

From nginx:alpine
COPY --from=build /app/build/web /usr/share/nginx/html

CMD ["nginx","-g","daemon off;"]
