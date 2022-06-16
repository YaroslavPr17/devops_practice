FROM gcc:11 as build
WORKDIR /APP
COPY . .
RUN g++ hello.cpp -o app.exe

FROM ubuntu:22.04
COPY --from=build /APP/app.exe /app/exe
CMD ./app.exe