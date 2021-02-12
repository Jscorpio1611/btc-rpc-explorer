FROM node:12.20.2 as builder
WORKDIR /workspace
COPY . .
RUN npm install

FROM node:12.20.2-alpine
WORKDIR /workspace
COPY --from=builder /workspace .
CMD npm start
EXPOSE 3002
