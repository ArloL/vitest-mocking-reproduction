FROM docker.io/library/node:18@sha256:160597f779997f4b941b43efe0cd6e7dd5b93b3230638928e8c1d297500409b5
WORKDIR /different
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --verbose
COPY . ./
RUN yarn test
