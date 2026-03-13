FROM node:18-slim

RUN apt-get update && apt-get install -y \
    ruby ruby-dev build-essential python3 make g++ \
    && rm -rf /var/lib/apt/lists/*

RUN gem install sass -v 3.7.4 && gem install scss-lint

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

CMD ["npm", "run", "build"]
