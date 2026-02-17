FROM node:24.13.1 as builder
WORKDIR /workspace
COPY . .
RUN npm install

FROM node:24.13.1-alpine
WORKDIR /workspace
COPY --from=builder /workspace .
CMD npm start
EXPOSE 3002
