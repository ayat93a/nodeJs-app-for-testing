FROM node:20-slim

WORKDIR /usr/src/app

# Copy the extracted application (from artifact)
COPY app/ ./

# Ensure production runtime
ENV NODE_ENV=production

EXPOSE 3000

CMD ["node", "app.js"]
