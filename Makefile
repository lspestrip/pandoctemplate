TEMPLATE_NAME = lspe_template.tex

PANDOC_OPTIONS = \
	--template=$(TEMPLATE_NAME) \
	--filter=pandoc-citeproc \
	-f markdown+footnotes+tex_math_double_backslash \
	-t latex \
	--pdf-engine=lualatex

example.pdf: example.md $(TEMPLATE_NAME)
	pandoc $(PANDOC_OPTIONS) -o $@ $<
