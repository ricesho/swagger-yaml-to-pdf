# swagger-yaml-to-pdf

This image is based on [Alpine Linux](https://alpinelinux.org/).

## Requirement

* Docker

## Usage

```
git clone https://github.com/ricesho/swagger-yaml-to-pdf.git
cd swagger-yaml-to-pdf
touch volume/input.yaml
docker build . -t swagger-yaml-to-pdf:latest
docker run -v <gitPath>/swagger-yaml-to-pdf/volume:/volume -it swagger-yaml-to-pdf:latest /bin/ash swaggerYamlToPdf.sh input.yaml
```
