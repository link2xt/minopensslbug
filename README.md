Minimal example for <https://github.com/deltachat/deltachat-core-rust/issues/5206>.

Run scripts/build.sh.

Then
```
$ target/x86_64-unknown-linux-musl/debug/minopensslbug 
thread 'main' panicked at src/main.rs:3:29:
called `Result::unwrap()` on an `Err` value: Normal(ErrorStack([Error { code: 168296468, library: "SSL routines", function: "SSL_CTX_new_ex", file: "ssl/ssl_lib.c", line: 3929 }]))
note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace
```

The problem is bisected to commit
<https://github.com/openssl/openssl/commit/fc570b2605b8eb18c3903543aaf0234b1f698c8e>
merged from PR <https://github.com/openssl/openssl/pull/20927>.
