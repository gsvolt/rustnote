build:
	./getReveal.sh
	pandoc -t revealjs -s -o out/slides.html src/slides/slides.md -V revealjs-url=./reveal.js -V theme=white
