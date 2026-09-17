FROM node:26.8.2 as builder
WORKDIR /workspace
COPY . .
RUN npm install

FROM node:26.8.2-alpine
WORKDIR /workspace
COPY --from=builder /workspace .
CMD npm start
EXPOSE 3002
