FROM docker.io/library/node:19@sha256:a0976cffecd3fad1697615eb14542e25deb2234f3beb4448417bfe88585ca4f8
WORKDIR /different
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --verbose
COPY . ./
RUN yarn test
