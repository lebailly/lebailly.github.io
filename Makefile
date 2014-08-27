.PHONY: preview, website, resume
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

#Rubber - https://launchpad.net/rubber/
#put \batchmode after \begin{document}
#http://ctan.org/pkg/silence

resume:
	cd ~/Documents/Dropbox/Jobs/Resume/CV; pdflatex CV.tex