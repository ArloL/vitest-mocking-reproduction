FROM docker.io/library/node:18@sha256:8a45c95c328809e7e10e8c9ed5bf8374620d62e52de1df7ef8e71a9596ec8676
WORKDIR /some/random
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --verbose
COPY . ./
RUN yarn test
