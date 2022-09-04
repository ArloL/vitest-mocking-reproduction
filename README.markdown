# vitest-mocking-reproduction

This project demonstrates an issue with vitest mocking.

```
docker build .
# see that the tests pass since the mocked function was used
docker build -f broken.Dockerfile .
# see that the tests don't pass since the real function was used
```

The only difference between the setups is the working directory:
`/different` works and `/app` does not.
