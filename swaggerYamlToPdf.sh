#/bin/sh

file=$1

if [ ! -f "/volume/${file}" ]; then
    echo "${file} NOT found."
fi

cp "/volume/${file}" .

# Conver Yaml to Json
ruby -rjson -ryaml -e "puts YAML.load_file(ARGV[0]).to_json" ${file} > input.json

# Convert Json to Adoc
java -jar ./swagger2markup-cli-1.3.1.jar convert -i input.json -d .

cat overview.adoc paths.adoc definitions.adoc > output.adoc

# Convert Adoc to Pdf
asciidoctor-pdf -o /volume/output.pdf output.adoc
