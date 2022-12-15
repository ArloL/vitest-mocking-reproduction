FROM docker.io/library/node:19@sha256:5881d9cbba5b4bf1c52f9a448d949257644dba1c8b36f81c56a520468353b38c
WORKDIR /different
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --verbose
COPY . ./
RUN yarn test
