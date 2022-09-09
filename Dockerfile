FROM docker.io/library/node:18@sha256:95b5016ed69e5fce67d1dc8311bbb31a4f58ef26e2d3192ee54f27e4930b5c50
WORKDIR /different
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --verbose
COPY . ./
RUN yarn test
