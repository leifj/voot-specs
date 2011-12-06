all: typeset

typeset: voot-2.0.txt voot-2.0.html

publish: typeset
	cp *.html ../docs/

%.txt: %.xml
	xml2rfc $<

%.html: %.xml
	xml2rfc $<
