FROM node:18.20.8 as builder
WORKDIR /workspace
COPY . .
RUN npm install

FROM node:18.20.8-alpine
WORKDIR /workspace
COPY --from=builder /workspace .
CMD npm start
EXPOSE 3002
