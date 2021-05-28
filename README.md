# docusaurus

Prebuild [Docusaurus](https://docusaurus.io/).

## Usage

In your `Dockerfile` just use in `FROM` directive and `COPY` your assets from `/install/build` folder.

For serving you can use [ease](https://github.com/cristaloleg/ease).

```
# build docs
FROM olegkovalov/dockedocus:main as build_assets

WORKDIR /install
COPY . .
RUN cd /install && yarn run build

# server docs
FROM olegkovalov/ease:main

COPY --from=build_assets /install/build assets
EXPOSE 8000

CMD ["./ease.exec"]
```

To quickly run `Dockerfile` use: `docker run -p 8000:8000 -it $(docker build -f Dockerfile -q .)`
