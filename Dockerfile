FROM node:12.22.11 as builder
WORKDIR /workspace
COPY . .
RUN npm install

FROM node:12.22.11-alpine
WORKDIR /workspace
COPY --from=builder /workspace .
CMD npm start
EXPOSE 3002
