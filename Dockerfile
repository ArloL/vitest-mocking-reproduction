FROM docker.io/library/node:19@sha256:96a4e27e360233f72418be5d2fbddce9ae88abab5eedc49086e175b299c363aa
WORKDIR /different
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --verbose
COPY . ./
RUN yarn test
