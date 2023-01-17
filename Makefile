# SPDX-FileCopyrightText: 2023 CrBr67 <lenaicjacquemin@outlook.fr>
#
# SPDX-License-Identifier: CC-BY-SA-4.0

#DOCUMENT=cours.adoc
DOCUMENT=cours


#doc:  $(DOCUMENT).html $(DOCUMENT).pdf
all:  $(DOCUMENT).html $(DOCUMENT).pdf



#html-doc: $(DOCUMENT)
#	asciidoctor $<
#
#pdf-doc: $(DOCUMENT) 
#	cours.adoc
#	asciidoctor-pdf $<

%.html: %.adoc
	asciidoctor $<

%.pdf: %.adoc 
	asciidoctor-pdf $<

hello: 
	echo Hello world

clean: 
	rm *.html *.pdf
#	rm *html *doc

.PHONY: all clean hello
# avec PHONY il fait le programme all clean hello sans regarder si c'est déjà effectué
#
