FROM node:18
WORKDIR /different
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --verbose
COPY . ./
RUN yarn test
