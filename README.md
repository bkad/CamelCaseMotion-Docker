This repository helps reproduce bugs and issues around CamelCaseMotion
without the burden of having to deal with pre-existing extensions and configurations.

```bash
docker build . -t repro-ccm
docker run -it repro-ccm
```

Then within the container, do your testing:

```bash
nvim samples
```
