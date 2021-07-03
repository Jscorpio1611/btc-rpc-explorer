FROM node:16.4.1 as builder
WORKDIR /workspace
COPY . .
RUN npm install

FROM node:16.4.1-alpine
WORKDIR /workspace
COPY --from=builder /workspace .
CMD npm start
EXPOSE 3002
