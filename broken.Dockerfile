FROM docker.io/library/node:19@sha256:75f791c1b84bccd63017c732d5dd6adf5426d077e1402bfb2d989c7a10b359c8
WORKDIR /some/random
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --verbose
COPY . ./
RUN yarn test
