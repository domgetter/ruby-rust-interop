require_relative 'rust_interop'

# All code here done with Rust 1.0.0beta on windows

RustInterop.void_test
puts RustInterop.i8_return_test  #   -128..127
puts RustInterop.u8_return_test  #      0..255
puts RustInterop.i16_return_test # -32768..32767
