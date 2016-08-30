all: 
	docker run -v $(PWD):/site advancedtelematic/jekyll-asciidoc:3.2.1

clean:
	rm -rf _site/

preview:
	docker run -p 4000:4000 -v $(PWD):/site advancedtelematic/jekyll-asciidoc:3.2.1 s -H 0.0.0.0

.PHONY: all clean