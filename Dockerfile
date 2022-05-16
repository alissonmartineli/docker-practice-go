FROM golang:1.18-alpine AS builder
WORKDIR /app
COPY go.mod ./
COPY hello.go ./
RUN go build -o /codeeducation

FROM scratch
COPY --from=builder /codeeducation ./
CMD ["/codeeducation"]
