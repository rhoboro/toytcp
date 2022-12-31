# toytcp

- [Rustで始めるTCP自作入門](https://techbookfest.org/product/6562563816947712?productVariantID=5842153718677504)

```sh
# Start toytcp container
$ make run
root@: cargo build --examples
root@: ip netns exec host1 /tmp/target/debug/examples/echoserver 10.0.0.1 40000
[toytcp/src/tcp.rs:95] "begin recv thread" = "begin recv thread"
[toytcp/examples/echoserver.rs:16] "listening.." = "listening.."
...
```

```sh
# Enter running container
$ make exec
root@ ip netns exec host1 /tmp/target/debug/examples/echoclient 10.0.0.1 40000
...
```

```sh
# cleanup
$ make clean
```

## Refs.

- [teru01/toytcp](https://github.com/teru01/toytcp)
- [s-ichikawa/rust-toytcp](https://github.com/s-ichikawa/rust-toytcp)
