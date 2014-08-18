.PHONY: preview, website
m = Default commit message (from make)
# Is this bad form?

%.html: %.md
	pandoc $< -o $@

preview: *.html
	open index.html

#m is git commit message
website: *.html
	git add *.html *.md
	git commit -m '${m}'
	git push origin master