# toytcp

- [Rustで始めるTCP自作入門](https://techbookfest.org/product/6562563816947712?productVariantID=5842153718677504)

```sh
$ make build

# Start /bin/bash
$ make run

# Change entry command with CMD
$ make run CMD="cargo run --bin echoserver 127.0.0.1:50000"
```

```sh
$ make exec CMD="nc 127.0.0.1 50000"
hello
hello
world
world
```

## Refs.

- [teru01/toytcp](https://github.com/teru01/toytcp)
- [s-ichikawa/rust-toytcp](https://github.com/s-ichikawa/rust-toytcp)
