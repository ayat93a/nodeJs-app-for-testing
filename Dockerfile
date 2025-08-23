# -------- Build stage --------
FROM node:20 AS builder
WORKDIR /usr/src/app
COPY nodejs-app-for-testing-ansible-1.0.0.tgz ./
RUN tar -xvzf nodejs-app-for-testing-ansible-1.0.0.tgz --strip-components=1
RUN npm install --omit=dev


# -------- Runtime stage --------
FROM node:20-slim
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app ./
EXPOSE 3000
CMD ["node", "app.js"]
