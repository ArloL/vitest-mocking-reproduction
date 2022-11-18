FROM docker.io/library/node:19@sha256:bff0e689cb433913ab411af7a58253d54c7fd8c3134ffeb25287cdf24d9a5972
WORKDIR /some/random
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --verbose
COPY . ./
RUN yarn test
