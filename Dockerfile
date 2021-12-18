FROM node:12.22.8 as builder
WORKDIR /workspace
COPY . .
RUN npm install

FROM node:12.22.8-alpine
WORKDIR /workspace
COPY --from=builder /workspace .
CMD npm start
EXPOSE 3002
