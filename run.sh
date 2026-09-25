# 2026-09-24

## pdftotext
pdftotext DSAI_RSE_request_KBEdit1.2026-09-23.pdf DSAI_RSE_request_KBEdit1.2026-09-23.txt

## pandoc 

pandoc DSAI_RSE_request.dpuiu.2026-09-24.md   -o DSAI_RSE_request.dpuiu.2026-09-24.html
pandoc DSAI_RSE_request.dpuiu.2026-09-24.html -o DSAI_RSE_request.dpuiu.2026-09-24b.md

## mermaid

npm install -g @mermaid-js/mermaid-cli
which mmdc
  /usr/bin/mmdc

cat diagram.mmd
  flowchart TB; A[Sequence] --> B[minimap2]; R[Reference] --> B; B --> C[BAM]

cat puppeteer-config.json
  {
    "args": ["--no-sandbox"]
  }

mmdc -p puppeteer-config.json -i diagram.mmd -o diagram.png -b transparent

## open images

identify -verbose diagram.svg # date, tainted ...

xdg-open diagram.svg 
xdg-open diagram.png 

## prettyprint xml

sudo snap install libxml2
xmllint --format diagram.svg | less

## mermaid

mmdc -p puppeteer-config.json -i diagram.mmd -o diagram.png -b blue -c mermaid-config.json 

###

# 2026-09-25

## open mermaid in drawio
drawio diagram.mmd  # & ctr-s to save

## mmd->drawio
#drawio --import diagram.mmd --output diagram.drawio

## drawio->svg
drawio --export --format svg diagram.drawio --output diagram.svg

## Open Library (to add additional picture lib
https://github.com/jgraph/drawio-diagrams
https://github.com/jgraph/drawio-libs
https://icons.diagrams.net/
https://bioart.niaid.nih.gov/

## details ...
xmllint --format diagram.svg  | grep -m 1 "^<\w"
<svg ...>

xmllint --format diagram.drawio | grep -m 1 "^<\w"
<mxfile ...>

xmllint --format ~/Downloads/font-awesome-library.xml |  grep -m 1 "^<\w" | more
<mxlibrary title="Font Awesome">
[
	{"xml":"&lt;mxGraphModel&gt;&lt;root&gt;&lt;mxCell id=\"0\"/&gt;&lt;mxCell id=\"1\" parent=\"0\"/&gt;&lt;mxCell id=\"2\" value=\"\" style=\"shape=image;html=1;verticalAlign=top;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;imageAspect=0;aspect=fixed;image=https://icons.diagrams.net/assets/font-awesome/1/0.svg;\" vertex=\"1\" parent=\"1\"&gt;&lt;mxGeometry width=\"320\" height=\"512\" as=\"geometry\"/&gt;&lt;/mxCell&gt;&lt;/root&gt;&lt;/mxGraphModel&gt;","w":320,"h":512,"title":"0"},
