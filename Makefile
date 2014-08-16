.PHONY: website, public

%.html: %.md
	pandoc $< -o $@

website: *.html

#m is git commit message
public: website
	git add *.html *.md
	git commit -m '${m}'
	git push origin master
	# Way to make it so only runs if changes?
	# Test git commit with no -m in test repo