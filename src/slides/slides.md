# Rust

![](img/Rust_programming_language_black_logo.svg)

### Gaurav Saxena
#### Spring, 2019

# Contents
 
. . .
 
- Facts

. . .


- Installation on Linux

. . .


- Hello World

. . .


- How to build and run

. . .

- Generate package
 
. . .

- Complicated project
 

# Facts
 
. . .
 
- Most loved programming language
![Most Loved](img/most_loved.png)

. . .


- Write software fast

. . .


- Community Owned

. . .


- Security conscious programming


# Installation on Linux
 
. . .
 
- Rust specific binaries: rustup, cargo, rustc
 
. . .
 
- Installed by default into: ~/.cargo/bin
 
. . .
 
- Script that does the installation:
```bash
curl https://sh.rustup.rs -sSf | sh
# select option 1
source $HOME/.cargo/env
```

# Sample run of script

```
info: downloading installer

Welcome to Rust!

This will download and install the official compiler for the Rust programming 
language, and its package manager, Cargo.

It will add the cargo, rustc, rustup and other commands to Cargo's bin 
directory, located at:

  /home/gsaxena/.cargo/bin

This path will then be added to your PATH environment variable by modifying the
profile file located at:

  /home/gsaxena/.profile

You can uninstall at any time with rustup self uninstall and these changes will
be reverted.

Current installation options:

   default host triple: x86_64-unknown-linux-gnu
     default toolchain: stable
  modify PATH variable: yes

1) Proceed with installation (default)
2) Customize installation
3) Cancel installation
>1

info: syncing channel updates for 'stable-x86_64-unknown-linux-gnu'
info: latest update on 2019-05-14, rust version 1.34.2 (6c2484dc3 2019-05-13)
info: downloading component 'rustc'
 85.3 MiB /  85.3 MiB (100 %)  23.6 MiB/s ETA:   0 s
info: downloading component 'rust-std'
 56.1 MiB /  56.1 MiB (100 %)  23.4 MiB/s ETA:   0 s
info: downloading component 'cargo'
info: downloading component 'rust-docs'
info: installing component 'rustc'
 85.3 MiB /  85.3 MiB (100 %)  15.4 MiB/s ETA:   0 s
info: installing component 'rust-std'
 56.1 MiB /  56.1 MiB (100 %)  18.1 MiB/s ETA:   0 s
info: installing component 'cargo'
info: installing component 'rust-docs'
 10.2 MiB /  10.2 MiB (100 %)   7.3 MiB/s ETA:   0 s
info: default toolchain set to 'stable'

  stable installed - rustc 1.34.2 (6c2484dc3 2019-05-13)


Rust is installed now. Great!

To get started you need Cargo's bin directory ($HOME/.cargo/bin) in your PATH 
environment variable. Next time you log in this will be done automatically.

To configure your current shell run source $HOME/.cargo/env
```

# Post Installation 

- Verify versions

```
rustc --version
cargo --version
rustup --version
```

. . .


```
rustc 1.34.2 (6c2484dc3 2019-05-13)
cargo 1.34.0 (6789d8a0a 2019-04-01)
rustup 1.18.2 (a0bf3c9cb 2019-05-02)
```


# Updates

```
rustup update
```

# Uninstallation

```
rustup self uninstall
```

# Local Documentation

- How to self-host local documentation:

```
rustup doc
```

# Hello World

* Code - main.rs

```rust
fn main() {
    println!("Hello, world!") 
}
```
. . .

* Compile 

```bash
rustc main.rs
```

. . .

* Run

```bash
./main
```

. . .

* Output

```bash
Hello, world!
```

# Cargo

![Cargo](https://doc.rust-lang.org/cargo/images/Cargo-Logo-Small.png)

# Cargo

- Build system and package manager


. . .

```
cargo new hello_cargo
```

. . .

```
hello_cargo/
├── Cargo.toml
└── src
    └── main.rs
```

# Cargo Build

```bash
cd src/hello_cargo
cargo build
```

. . .

```
 Compiling hello_cargo v0.1.0 (/home/gsaxena/github/rustnote/src/hello_cargo)
    Finished dev [unoptimized + debuginfo] target(s) in 0.25s
```

. . .

```
hello_cargo
│   ├── Cargo.lock
│   ├── Cargo.toml
│   ├── src
│   │   └── main.rs
│   └── target
│       ├── debug
│       │   ├── build
│       │   ├── .cargo-lock
│       │   ├── deps
│       │   │   ├── hello_cargo-e3ebe9efed55c572
│       │   │   └── hello_cargo-e3ebe9efed55c572.d
│       │   ├── examples
│       │   ├── .fingerprint
│       │   │   └── hello_cargo-e3ebe9efed55c572
│       │   │       ├── bin-hello_cargo-e3ebe9efed55c572
│       │   │       ├── bin-hello_cargo-e3ebe9efed55c572.json
│       │   │       ├── dep-bin-hello_cargo-e3ebe9efed55c572
│       │   │       └── invoked.timestamp
│       │   ├── hello_cargo
│       │   ├── hello_cargo.d
│       │   ├── incremental
│       │   │   └── hello_cargo-36bpyt72te166
│       │   │       ├── s-fcgo7yjotz-k0dch8-1kr8fz84rykco
│       │   │       │   ├── 146aud6r9cenhc3z.o
│       │   │       │   ├── 1gej4co0vtc5jro0.o
│       │   │       │   ├── 1ois2z7wfu2hmfn6.o
│       │   │       │   ├── 5fe21omos9cq4gd4.o
│       │   │       │   ├── dep-graph.bin
│       │   │       │   ├── eznm9jga555ex6d.o
│       │   │       │   ├── query-cache.bin
│       │   │       │   ├── uo788ez0nk2o6s1.o
│       │   │       │   └── work-products.bin
│       │   │       └── s-fcgo7yjotz-k0dch8.lock
│       │   └── native
│       └── .rustc_info.json
```

# Cargo.toml

 
. . .
 

```ini
[package]
name = "hello_cargo"
version = "0.1.0"
authors = ["gsaxena"]
edition = "2018"

[dependencies] 
# Cargo Crates (packages) go here
```
 
. . .
 
- Config format: TOML
- main.rs - same as before
- Binaries placed at this path: "target\\debug"

# Cargo - Binaries

```bash
./target/debug/hello_cargo
```

. . .

```bash
cargo run # builds source and runs it
```

. . .

```bash
cargo check  # sanity check
```

# Cargo - Release
 
. . .
 
```bash
cargo build --release
```
 
. . .
 
```
target
├── release
│   ├── build
│   ├── .cargo-lock
│   ├── deps
│   │   ├── hello_cargo-7c3fff82b83d9511
│   │   └── hello_cargo-7c3fff82b83d9511.d
│   ├── examples
│   ├── .fingerprint
│   │   └── hello_cargo-7c3fff82b83d9511
│   │       ├── bin-hello_cargo-7c3fff82b83d9511
│   │       ├── bin-hello_cargo-7c3fff82b83d9511.json
│   │       ├── dep-bin-hello_cargo-7c3fff82b83d9511
│   │       └── invoked.timestamp
│   ├── hello_cargo
│   ├── hello_cargo.d
│   ├── incremental
│   └── native

```

# Visual Studio Code

Install these extensions (in order):

- [Rust (rls) Extension:rust-lang.rust](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust)
- [CodeLLDB Extension](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb)

# References

- [The Rust Programming Language Book](https://doc.rust-lang.org/book)
- [Why I love Rust](https://alexkitchens.net/2018/07/06/why-i-love-rust.html)
- [Debug Rust with VS Code](https://www.forrestthewoods.com/blog/how-to-debug-rust-with-visual-studio-code/)
