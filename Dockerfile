# Start from latest golang parent image
FROM golang:latest AS builder 

# Set the working directory
WORKDIR /myapp

# Copy source file from current directory to container
COPY helloworld.go .

ENV CGO_ENABLED=0 

# Build the application
RUN go build -o helloworld .

# Start from latest alpine parent image
FROM alpine:latest AS runtime

# Set the working directory
WORKDIR /myapp

# Copy helloworld app from current directory to container
COPY --from=builder /myapp/helloworld .

EXPOSE 8080

# Run the application
ENTRYPOINT ["./helloworld"]