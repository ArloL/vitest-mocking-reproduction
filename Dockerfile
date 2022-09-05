FROM docker.io/library/node:18@sha256:a0a2fc4435b0c9ae7bec0a69b1279323a4a41c5a005581fbf30d39cd5777db37
WORKDIR /different
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --verbose
COPY . ./
RUN yarn test
