FROM docker.io/library/node:18@sha256:32b920f09c28e3b27c9c5620d843aab0d2bb2f46e7d0505686626ba20cb5da0e
WORKDIR /different
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --verbose
COPY . ./
RUN yarn test
