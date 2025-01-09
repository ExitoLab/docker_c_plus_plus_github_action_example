FROM ubuntu:25.04

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

# Build the project
RUN cmake . && make

CMD ["./cpp_project"]