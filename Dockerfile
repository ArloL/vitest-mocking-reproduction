FROM docker.io/library/node:19@sha256:743707dbaca64ff4ec8673a6e0c4d03d048e32b4e8ff3e89ee0d19f772433dcd
WORKDIR /different
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --verbose
COPY . ./
RUN yarn test
