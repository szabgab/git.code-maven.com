# Merge conflict in Rust

In this example `git` will merge the changes automatically, but the the merged version will not compile.


In one branch:

* Run the code: `cargo run 17` This works.
* Change the iterations from 45 to 100 and run `cargo run 17` again. This will have a `panic!` "attempt to add with overflow"
* Change the number type from`u32` to `u128`. Now it compiles and runs.

In another branch:

* Enable both the definition and the usage of the `square` function.
* Run `cargo run 17`. It works.


Merge them together. It has a compilation error.

{% embed include file="src/examples/fibo-rust/src/main.rs" %}
