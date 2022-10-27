FROM docker.io/library/node:19@sha256:9006c62d58649d5db18bbe00c2c73a2cfaf56d63fa56200b141203736123f9a4
WORKDIR /some/random
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --verbose
COPY . ./
RUN yarn test
