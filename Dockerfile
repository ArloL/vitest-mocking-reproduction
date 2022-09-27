FROM docker.io/library/node:18@sha256:61c3919293bd4031b6e3eb14114afa0ccb19db03addbae056e9d821d0d079a42
WORKDIR /different
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --verbose
COPY . ./
RUN yarn test
