FROM docker.io/library/node:19@sha256:c19647fcafe27628f06daa9feaaec2b7acfb9ae996d9aeaaa84ac90f62b6513c
WORKDIR /some/random
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --verbose
COPY . ./
RUN yarn test
