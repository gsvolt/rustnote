build:
	./getReveal.sh
	pandoc -t revealjs -s -o out/slides.html src/slides/slides.md -V revealjs-url=./reveal.js -V theme=white
	cd src/hello_world; rustc main.rs -o ../../out/main
