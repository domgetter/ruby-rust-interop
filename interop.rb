require_relative 'rust_interop'

# All code here done with Rust 1.0.0beta on windows

RustInterop.void_test
puts RustInterop.i8_return_test  #   -128..127
puts RustInterop.u8_return_test  #      0..255
puts RustInterop.i16_return_test # -32768..32767
puts RustInterop.u16_return_test #      0..65535
puts RustInterop.i32_return_test # -2147483648..2147483647 Bignum territory
puts RustInterop.u32_return_test #           0..4294967295
puts RustInterop.i64_return_test # -9223372036854775808..9223372036854775808
puts RustInterop.u64_return_test #                    0..18446744073709551615

vec = RustInterop.vec_return_test
RustInterop.pass_vec_back_test(vec)

array = [7, 8]
vec = RustInterop.vec_return_with_vals_test(*array)
RustInterop.pass_vec_back_test(vec)