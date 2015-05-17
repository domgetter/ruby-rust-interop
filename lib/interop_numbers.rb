require_relative 'rust_interop_numbers'

RustInterop.void_test
puts RustInterop.i8_return_test  #   -128..127
puts RustInterop.u8_return_test  #      0..255
puts RustInterop.i16_return_test # -32768..32767
puts RustInterop.u16_return_test #      0..65535
puts RustInterop.i32_return_test # -2147483648..2147483647 Bignum territory
puts RustInterop.u32_return_test #           0..4294967295
puts RustInterop.i64_return_test # -9223372036854775808..9223372036854775808
puts RustInterop.u64_return_test #                    0..18446744073709551615

RustInterop.i8_pass_test(128)
RustInterop.u8_pass_test(128)
RustInterop.i16_pass_test(2**15)