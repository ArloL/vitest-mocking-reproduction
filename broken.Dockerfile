FROM docker.io/library/node:19@sha256:6da4e30e3952e460fe4ad256e46a8b79acce46dd596bbe4ef882d5ec0d1ef6cb
WORKDIR /some/random
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --verbose
COPY . ./
RUN yarn test
