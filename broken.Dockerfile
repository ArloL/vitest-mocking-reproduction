FROM docker.io/library/node:18@sha256:c48cf8c493930d6b5fbada793144b177113fefeda5397e99173938c59933285d
WORKDIR /some/random
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --verbose
COPY . ./
RUN yarn test
