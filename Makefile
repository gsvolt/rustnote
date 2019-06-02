build:
	./getReveal.sh
	cp -R img out/
	pandoc -i -t revealjs -s -o out/slides.html src/slides/slides.md -V revealjs-url=./reveal.js -V theme=white
	cd src/hello_world; rustc main.rs -o ../../out/main
	cd src/hello_cargo; cargo build
	cd src/guessing_game; cargo build

clean:
	rm -rf out/*
	cd src/hello_cargo; cargo clean --release
	cd src/guessing_game; cargo clean --release
