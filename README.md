# ruby-rust-interop
Showcasing the calling of number-based functions from Rust in a Ruby runtime

I hope these examples will help you set up Ruby with Rust!

All these examples were tested on Windows with Ruby 2.1.6 and Rust 1.0.0-beta.4

If you clone the repo, make sure you have Ruby and Rust installed on your machine and run

    rake

By default, this will compile the `src/interop.rs` file and run `interop.rb` to display the result of some number passing.

Ruby's Fiddle library made it super easy, and [Yehuda Katz's blog here](http://blog.skylight.io/bending-the-curve-writing-safe-fast-native-gems-with-rust/) helped me get set up so thanks for that!

I hope you enjoy the examples, and don't be afraid to ask me any questions.