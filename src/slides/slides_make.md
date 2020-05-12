% make
% G
% December 3, 2019

# Make

---

## What is it?

. . .

Utility to organize the order in which a program is made

. . .

Official definition: 

Utility to maintain groups of programs

--- 

## Why do we need it?

. . .

With make, it is easy to control the order in which executables are built

. . .

Commonly used in situations where you run one step and use its result within the next step

## How to use it?

. . .


```Makefile
# Simplest Makefile (arguably):

step1:
    echo "hello "

step2: step1
    echo "world"
```

## Run

. . .

```bash
make step1
```

. . .

```
hello
```

## Run

. . .

```bash
make step2
```

. . .

```
hello
 world
```

# Important Make Gotchas

---

_foo_

__bar__

___baz___


> foo bar
> baz
