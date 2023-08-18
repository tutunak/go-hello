FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY . .
RUN go build -o go-hello .

# Stage 2: Run the Go app in a lightweight alpine image
FROM alpine:latest

# Set the current working directory
WORKDIR /app

# Copy the binary from builder stage
COPY --from=builder /app/go-hello .

# Command to run when the container starts
CMD ["./go-hello"]
