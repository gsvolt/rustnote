build:
	./getReveal.sh
	cp -R img out/
	pandoc -i -t revealjs -s src/slides/slides.md -o out/slides.html -V theme=white
	pandoc -i -s src/slides/slides.md -o out/slides.pptx
	#pandoc -i -s src/slides/slides.md -o out/slides.pdf
	cd src/hello_world; rustc main.rs -o ../../out/main
	cd src/hello_cargo; cargo build
	cd src/guessing_game; cargo build

clean:
	rm -rf out/*
	cd src/hello_cargo; cargo clean --release
	cd src/guessing_game; cargo clean --release
