# Factorial


This is a command-line utility that computes factorials.

## Installation

```
make clean
make build
export DESTDIR="/" #will install to ${DESTDIR}/usr/bin
make install 
```

You will need `cargo` (Rust utility).

## Usage

Once installed, you can run `factorial n` for any non-negative integer to compute it's factorial.

Examples:
```
$ factorial 0
1
$ factorial 5
120
$ factorial 171
mathematically infinite
```

