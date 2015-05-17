# ruby-rust-interop
Showcasing the calling of number-based functions from Rust in a Ruby runtime

I hope these examples will help you set up Ruby with Rust!

All these examples were tested on Windows with Ruby 2.1.6 and Rust 1.0.0-beta.4

If you clone the repo, make sure you have Ruby and Rust installed on your machine and run

    rake

By default, this will compile the `src/interop.rs` file and run `interop.rb` to display the result of some number passing.

Ruby's Fiddle library made it super easy, and [Yehuda Katz's blog here](http://blog.skylight.io/bending-the-curve-writing-safe-fast-native-gems-with-rust/) helped me get set up so thanks for that!

I hope you enjoy the examples, and don't be afraid to ask me any questions.

## To Be Going On With

You need 3 ingredients to get this working:

###Step 1

write a function the right way in Rust (read at the bottom for a common problem on Windows and a simple workaround)

```rust
#[no_mangle]
pub extern "C" fn fn_name() {}
```

###Step 2
compile that function the right way

```
> rustc my_file.rs --crate-type=dylib
```

###Step 3
use Fiddle to create a method in Ruby from the C code

```ruby
require 'fiddle'
require 'fiddle/import'

module RustFunctions
  extend Fiddle::Importer
  dlload "./my_file.dll"
  extern "void fn_name()"
end
```
###Step 4
Now you can use RustFunctions.fn_name anywhere in your ruby code!

Of course, to add parameters and return values, you have to know how to translate between Rust's types and C's types.

```rust
#[no_mangle]
pub extern "C" fn fn_name(x: i32) -> i32 {
	println!("You passed in {}", x);
	x + 1
}
```

Compilation will be the same (you can see why I made a rakefile for that).

And your Fiddle code will require the types:

```ruby
require 'fiddle'
require 'fiddle/import'

module RustFunctions
  extend Fiddle::Importer
  dlload "./my_file.dll"
  extern "int fn_name(int)"
end
```

 And now, running RustFunctions.fn_name(3) will return 4.  Hooray!

 Note to Windows users: there is a [known compiler bug](https://github.com/rust-lang/rust/issues/18807#issuecomment-102177511) for compiling dynamic libraries on Windows.  At the bottom of that page I share an easy workaround.