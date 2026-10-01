FROM node:22.23.3 as builder
WORKDIR /workspace
COPY . .
RUN npm install

FROM node:22.23.3-alpine
WORKDIR /workspace
COPY --from=builder /workspace .
CMD npm start
EXPOSE 3002
