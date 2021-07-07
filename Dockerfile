FROM node:14.17.3 as builder
WORKDIR /workspace
COPY . .
RUN npm install

FROM node:14.17.3-alpine
WORKDIR /workspace
COPY --from=builder /workspace .
CMD npm start
EXPOSE 3002
