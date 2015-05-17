require_relative 'rust_interop'

# All code here done with
#  ruby 2.1.6p336 (2015-04-13 revision 50298) [x64-mingw32]
#  rustc 1.0.0-beta.4 (850151a75 2015-04-30) (built 2015-05-01)

# compiling: rustc src/interop.rs --crate-type=dylib -A overflowing-literals
#                                                     ^^^^^^^^^^^^^^^^^^^^^^ (this squelches integer overflow warnings)
#
# Or just run rake.  it will build and run by default.

puts "Quick void -> void funciton just to make sure things are okay"
puts
RustInterop.void_test

puts
puts "Now we'll grab numbers from Rust and use them in Ruby"
puts "You could put them into variables, but here we'll just"
puts "print them out."
puts
puts RustInterop.i8_return_test  #   -128..127
puts RustInterop.u8_return_test  #      0..255
puts RustInterop.i16_return_test # -32768..32767
puts RustInterop.u16_return_test #      0..65535
puts RustInterop.i32_return_test # -2147483648..2147483647 Bignum territory
puts RustInterop.u32_return_test #           0..4294967295
puts RustInterop.i64_return_test # -9223372036854775808..9223372036854775808
puts RustInterop.u64_return_test #                    0..18446744073709551615
puts
puts "Now for passing things to Rust..."
puts

# Even though you can pass values up to 2**31-1 (signed) and 2**32-1 (unsigned),
# Rust will overflow them appropriately. For the 64 bit numbers, you can pass
# in bigger numbers.  In each, I'm passing in the maximum value you can pass
# from Ruby, and showing the range it will overflow into.
RustInterop.i8_pass_test(2**31-1)  #   -128..127
RustInterop.u8_pass_test(2**32-1)  #      0..255
RustInterop.i16_pass_test(2**31-1) # -32768..32767
RustInterop.u16_pass_test(2**32-1) #      0..65535
RustInterop.i32_pass_test(2**31-1) # -2147483648..2147483647
RustInterop.u32_pass_test(2**32-1) #           0..4294967295
RustInterop.i64_pass_test(2**63-1) # -9223372036854775808..9223372036854775808
RustInterop.u64_pass_test(2**64-1) #                    0..18446744073709551615

puts
puts "Can't do a number showcase without some floating!"
puts
#Ruby doesn't distinguish between 32bit and 64bit floats.  They're all 64bit in Ruby.
# So be careful when reasoning about the passing of 32bit floats back and forth.
puts RustInterop.f32_return_test
puts RustInterop.f64_return_test

RustInterop.f32_pass_test(1.00000006)
RustInterop.f64_pass_test(1.00000000000000015)