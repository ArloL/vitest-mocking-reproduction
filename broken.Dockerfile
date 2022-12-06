FROM docker.io/library/node:19@sha256:c19d79addc46759f7f6b72002f7521e3158be3ad36fa2af970b16bbd72e0b8b8
WORKDIR /some/random
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --verbose
COPY . ./
RUN yarn test
