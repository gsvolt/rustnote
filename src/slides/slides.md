% Rust
% Gaurav Saxena
% June 4, 2019

# Introduction

## Rust

![](img/Rust_programming_language_black_logo.svg)

## Facts
 
- Most loved programming language
![Most Loved](img/most_loved.png)
- Write software fast
- Community Owned
- Security conscious programming
- Strong static type system
- Expression-based language

## Historical Context

Since 2000, developers have had issues

- Wrote sequential code to multi-threaded/multi-core apps
- Data race issues
- Memory leaks
- Big RAM Consumption

## This Tall

![](img/thistall.jpg){height=450px}

- [Must be this tall to write multi-threaded code](https://bholley.net/blog/2015/must-be-this-tall-to-write-multi-threaded-code.html)


## Rust

. . .
 
Modern, safe, fast, concurrent systems programming language

## Rust - Features

- Immutability (default)
- Memory leaks, data race safety, raised at compilation time
- Zero-cost abstraction
- Define type behaviours with traits
- Rich build tool (cargo)
- Generics
- Multiple meta programming levels
- Rich error handling


# Installation

## Linux

- Rust specific binaries: rustup, cargo, rustc
- Installed by default into: ~/.cargo/bin
- Script that does the installation:
```bash
curl https://sh.rustup.rs -sSf | sh
# select option 1
source $HOME/.cargo/env
```

## Sample run of script

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

## Post Installation 

- Verify versions

```bash
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

## Updates

```
rustup update
```
 
. . .
 
```bash
$ rustup update stable
info: syncing channel updates for 'stable-x86_64-unknown-linux-gnu'
info: latest update on 2019-05-23, rust version 1.35.0 (3c235d560 2019-05-20)
info: downloading component 'rustc'
 88.4 MiB /  88.4 MiB (100 %)  10.8 MiB/s ETA:   0 s
info: downloading component 'rust-std'
 59.1 MiB /  59.1 MiB (100 %)  11.1 MiB/s ETA:   0 s
info: downloading component 'cargo'
info: downloading component 'rust-docs'
info: downloading component 'rls'
info: downloading component 'rust-src'
info: downloading component 'rust-analysis'
info: removing component 'rustc'
info: removing component 'rust-std'
info: removing component 'cargo'
info: removing component 'rust-docs'
info: removing component 'rls'
info: removing component 'rust-src'
info: removing component 'rust-analysis'
info: installing component 'rustc'
 88.4 MiB /  88.4 MiB (100 %)  17.1 MiB/s ETA:   0 s
info: installing component 'rust-std'
 59.1 MiB /  59.1 MiB (100 %)  19.7 MiB/s ETA:   0 s
info: installing component 'cargo'
info: installing component 'rust-docs'
 10.4 MiB /  10.4 MiB (100 %)   7.8 MiB/s ETA:   0 s
info: installing component 'rls'
info: installing component 'rust-src'
info: installing component 'rust-analysis'

  stable-x86_64-unknown-linux-gnu updated - rustc 1.35.0 (3c235d560 2019-05-20)

info: checking for self-updates
info: downloading self-update
```

## Uninstallation

```bash
rustup self uninstall
```

## Local Documentation

```bash
rustup doc
```


# Hello World

## main.rs

```rust
fn main() {
    println!("Hello, world!") 
}
```
 
. . .
 
Compile
```bash
rustc main.rs
```
 
. . .
 
Run

```bash
./main
```
 
. . .
 
Output

```bash
Hello, world!
```

# Cargo

## Cargo

![](https://doc.rust-lang.org/cargo/images/Cargo-Logo-Small.png)

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

## Cargo Build

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

## Cargo.toml

 
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
 
- Config format: TOML
- main.rs - same as before
- Binaries placed at this path: "target\\debug"

## Cargo - Binaries

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

## Cargo - Release
 
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

# Guessing Game

## Guessing Game - Part 1

. . .
 
```rust
use std::io;

fn main() {
    println!("Guess the number!");

    println!("Please input your guess.");

    let mut guess = String::new(); // mutable

    io::stdin().read_line(&mut guess)
        .expect("Failed to read line");

    println!("You guessed: {}", guess);
}
```

## Guessing Game - Build

```console
cargo build
```
 
. . .
 
```console
$ cargo build
    Updating crates.io index
  Downloaded libc v0.2.58
   Compiling libc v0.2.58
   Compiling rand v0.4.6
   Compiling rand v0.3.23
   Compiling guessing_game v0.1.0 (/home/gsaxena/github/rustnote/src/guessing_game)
    Finished dev [unoptimized + debuginfo] target(s) in 5.18s
```

## Guessing Game - Cargo.lock

Cargo.lock (Specific builds)

```console
# This file is automatically @generated by Cargo.
# It is not intended for manual editing.
[[package]]
name = "fuchsia-cprng"
version = "0.1.1"
source = "registry+https://github.com/rust-lang/crates.io-index"

[[package]]
name = "guessing_game"
version = "0.1.0"
dependencies = [
 "rand 0.3.23 (registry+https://github.com/rust-lang/crates.io-index)",
]

[[package]]
name = "libc"
version = "0.2.58"
source = "registry+https://github.com/rust-lang/crates.io-index"

[[package]]
name = "rand"
version = "0.3.23"
source = "registry+https://github.com/rust-lang/crates.io-index"
dependencies = [
 "libc 0.2.58 (registry+https://github.com/rust-lang/crates.io-index)",
 "rand 0.4.6 (registry+https://github.com/rust-lang/crates.io-index)",
]

[[package]]
name = "rand"
version = "0.4.6"
source = "registry+https://github.com/rust-lang/crates.io-index"
dependencies = [
 "fuchsia-cprng 0.1.1 (registry+https://github.com/rust-lang/crates.io-index)",
 "libc 0.2.58 (registry+https://github.com/rust-lang/crates.io-index)",
 "rand_core 0.3.1 (registry+https://github.com/rust-lang/crates.io-index)",
 "rdrand 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)",
 "winapi 0.3.7 (registry+https://github.com/rust-lang/crates.io-index)",
]

[[package]]
name = "rand_core"
version = "0.3.1"
source = "registry+https://github.com/rust-lang/crates.io-index"
dependencies = [
 "rand_core 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)",
]

[[package]]
name = "rand_core"
version = "0.4.0"
source = "registry+https://github.com/rust-lang/crates.io-index"

[[package]]
name = "rdrand"
version = "0.4.0"
source = "registry+https://github.com/rust-lang/crates.io-index"
dependencies = [
 "rand_core 0.3.1 (registry+https://github.com/rust-lang/crates.io-index)",
]

[[package]]
name = "winapi"
version = "0.3.7"
source = "registry+https://github.com/rust-lang/crates.io-index"
dependencies = [
 "winapi-i686-pc-windows-gnu 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)",
 "winapi-x86_64-pc-windows-gnu 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)",
]

[[package]]
name = "winapi-i686-pc-windows-gnu"
version = "0.4.0"
source = "registry+https://github.com/rust-lang/crates.io-index"

[[package]]
name = "winapi-x86_64-pc-windows-gnu"
version = "0.4.0"
source = "registry+https://github.com/rust-lang/crates.io-index"

[metadata]
"checksum fuchsia-cprng 0.1.1 (registry+https://github.com/rust-lang/crates.io-index)" = "a06f77d526c1a601b7c4cdd98f54b5eaabffc14d5f2f0296febdc7f357c6d3ba"
"checksum libc 0.2.58 (registry+https://github.com/rust-lang/crates.io-index)" = "6281b86796ba5e4366000be6e9e18bf35580adf9e63fbe2294aadb587613a319"
"checksum rand 0.3.23 (registry+https://github.com/rust-lang/crates.io-index)" = "64ac302d8f83c0c1974bf758f6b041c6c8ada916fbb44a609158ca8b064cc76c"
"checksum rand 0.4.6 (registry+https://github.com/rust-lang/crates.io-index)" = "552840b97013b1a26992c11eac34bdd778e464601a4c2054b5f0bff7c6761293"
"checksum rand_core 0.3.1 (registry+https://github.com/rust-lang/crates.io-index)" = "7a6fdeb83b075e8266dcc8762c22776f6877a63111121f5f8c7411e5be7eed4b"
"checksum rand_core 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)" = "d0e7a549d590831370895ab7ba4ea0c1b6b011d106b5ff2da6eee112615e6dc0"
"checksum rdrand 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)" = "678054eb77286b51581ba43620cc911abf02758c91f93f479767aed0f90458b2"
"checksum winapi 0.3.7 (registry+https://github.com/rust-lang/crates.io-index)" = "f10e386af2b13e47c89e7236a7a14a086791a2b88ebad6df9bf42040195cf770"
"checksum winapi-i686-pc-windows-gnu 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)" = "ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6"
"checksum winapi-x86_64-pc-windows-gnu 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)" = "712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f"
```

## Guessing Game - Cargo doc

```console
$ cargo doc --open
```

- Generate and open documentation for project
- Allows you to search for your methods and standard library methods in a web based interface


## Guessing Game - Cargo doc

![Cargo Doc](img/cargo_doc.png)

## Guessing Game - Part 2

```rust
use std::io;

use rand::Rng; // trait

fn main() {
    println!("Guess the number!");

    let secret_number = rand::thread_rng().gen_range(1, 101);
    
    println!("The secret number is: {}", secret_number);

    println!("Please input your guess.");

    let mut guess = String::new();  // mutable

    io::stdin().read_line(&mut guess)
        .expect("Failed to read line");

    let guess: u32 = guess.trim().parse()  // shadow variable
        .expect("Please type a number!");

    println!("You guessed: {}", guess);

    match guess.cmp(&secret_number) {   // <-- yields: mismatched types error
        Ordering::Less => println!("Too Small!"),
        Ordering::Greater => println!("Too Big!"),
        Ordering::Equal => println!("You win!"),
    }
}
```

## Guessing Game - Part 3

```rust
  loop {
      println!("Please input your guess.");

      // --snip--

      match guess.cmp(&secret_number) {
          Ordering::Less => println!("Too small!"),
          Ordering::Greater => println!("Too big!"),
          Ordering::Equal => println!("You win!"),
      }
  }
```

## Guessing Game - Part 4

```rust
        let guess: u32 = match guess.trim().parse(){ 
            Ok(num) => num,
            Err(_) => continue,
        };
        println!("You guessed: {}", guess);

        match guess.cmp(&secret_number) {
            Ordering::Less => println!("Too Small!"),
            Ordering::Greater => println!("Too Big!"),
            Ordering::Equal => {
                println!("You win!");
                break;
            }
        }
```

# Rust Language

## Variables

```rust
let foo = bar; // Immutable by default
```
 
. . .
 
```rust
let mut foo = bar; // Mutable
```

## Constants

```rust
const MAX_POINTS: u32 = 100_000;
```

## Shadow Variables - Same Type

```rust
let x = 5;

let x = x + 1;

let x = x * 2;

```

- Notice the use of let keyword
- As opposed to a simple assignment
- Enables re-use of the same symbol

## Shadow Variables - Differing Types

```rust
let spaces = "    ";
let spaces = spaces.len();
```

- Can change the type of spaces using let


## Scalar Data Types

Integers: 
i8, u8, i16, u16,i32, u32, i64, u64, i128, u128
```rust
let age: i8 = 16;
```
- Floating Point Types:
```rust
let balance: f32 = 2500.50;
```
- Boolean Type:
```rust
let isDog: bool = true;
```
- Character Type:
```rust
let c = 'C'; // single quotes
```

## Compund Data Types

- Tuple type:
```rust
let tup: (i32, f64, u8) = (500, 6.4, 1);
let (x, y, z) = tup;
println!("{} {}", x, tup.0);
```
- Array Type:
```rust
let a = [1,2,3,4,5];
let b = [2,2,2,2];
let c = [2;4]; // same as b
println!("{}", c[1]);
```

## Functions

```rust
fn add(x: i32, y: i32){
  println!("{}", x + y);
}
```
 
. . .
 
```rust
fn five() -> i32 { // return values
  5  // expression, not statement anymore
}
```
 
. . .
 
```rust
fn plus_one(x: i32) -> i32 {
  x + 1
}
```

## Control Flow

- if expressions
```rust
let outcome = if number < 5 {
  "less than 5"
} else if number == 5 {
  "Is 5"
} else {
  "greater than 5"
}
```

- loop
```rust
loop {
  println!("forever young");
}
```

## Control Flow

- while
```rust
let mut number = 3;
while number != 0 {
  println!("{}", number);
  number -= 1;
}
println!("lift off");
```

- for
```rust
let a = [10, 20, 30, 40, 50];
for element in a.iter() {
  println!("{}", element);
}
```

## Control Flow

- for
```rust
for number in (1..4).rev() {
    println!("{}!", number);
}
println!("LIFTOFF!!!");
```

# Ownership

## Ownership

- Most unique feature in Rust
- No need for garbage collector
- The language provides memory safety guarantees

## Ownership

- Compile time check for memory usage
- Language defines rules and rustc enforces them
- At runtime, these rules have no impact on performance

## Ownership 

### Stack

- Quicker access
- Last in first out

### Heap

- Slower access
- Pointers used to provide access
- "Allocating"

## Ownership 

Is concerned with:
- Keeping track of what parts of code are using what data on heap
- Minimizing the amount of duplicate data
- Clean up unused data so you don't run out of space

## Ownership Rules

- Each value has a variable that is called its *Owner*
- There can only be one owner at a time
- When the owner goes out of scope, the value will be dropped

## Ownership - Variable Scope

```rust
{
  // s comes in scope
  let s = "hello";
  // s goes out of scope
}
```

## Ownership - String Type

- Complex data type
- Allocated on the heap
- Can grow and shrink at runtime
```rust
let s = String::from("hello");
```

- Can be mutated
```rust
{
  let mut s = String::from("hello");
  s.push_str(", world!");
} // scope is over, s is not valid; Rust calls "drop" function here
```

## Ownership - String Type

Two things:
- Memory must be requested from OS at runtime (String::from)
- Need a way to return this memory 

Other languages use garbage collector for second part.

## Ownership

```rust
let s1 = String::from("hello");
let s2 = s1;
```
 
. . .
 
![](https://doc.rust-lang.org/stable/book/img/trpl04-01.svg)





























# Related Information

## Visual Studio Code

Install these extensions (in order):

- [Rust (rls) Extension:rust-lang.rust](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust)
- [CodeLLDB Extension](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb)

## References 1/2

- [Rust Programming Language - Home](https://www.rust-lang.org)
- [Rust Programming Language Book](https://doc.rust-lang.org/book)
- [Rust by Example](https://doc.rust-lang.org/rust-by-example/index.html)
- [Rust Cookbook](https://rust-lang-nursery.github.io/rust-cookbook/)
- [24 Days of Rust](http://zsiciarz.github.io/24daysofrust/)
- [Why I love Rust](https://alexkitchens.net/2018/07/06/why-i-love-rust.html)
- [Debug Rust with VS Code](https://www.forrestthewoods.com/blog/how-to-debug-rust-with-visual-studio-code/)
- [RustBridge](https://rustbridge.com/)
- [RustConf](https://www.rustconf.com/)

## References 2/2

- [Github](https://github.com/rust-lang)
- [Mozilla Research: Rust language](https://research.mozilla.org/rust/)
- [Mozilla Hacks: Rust Articles](https://hacks.mozilla.org/category/rust-2/)
- [Rust Playground](https://play.rust-lang.org)
- [Rust-lang Discord](https://discordapp.com/invite/rust-lang)
- [Rustaceans](https://www.rustaceans.org/)
- [Crates](https://crates.io/)
- [Docs.rs](https://docs.rs/)

## References 3/3

- [InfoQ: Rust Topic](https://www.infoq.com/rust/)


# Questions ?

# Trivia

## Trivia

Rust is named after:

1. The color an old car from the 50's would be in today's time?
2. A lesser known fungi?
3. A town in Germany?
4. Rust belt, our very own north eastern region?
5. A finnish rock band? 

 
. . .
 
Answer: 
 
. . .
 
2. A lesser known fungi

## Rust - Fungi

- Pathogenic Fungi
![](img/rust_fungi.png)
- Scientific classification: Puccinia (Fungi)
- Obligate pathogen - bacteria that must cause disease in order to be transmitted from one host to another
- Cannot survive without the plants they infect
- Infect plants like: White Pine, Wheat, Soybean, Coffee, etc.

# Thanks!
