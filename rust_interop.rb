require 'fiddle'
require 'fiddle/import'

module RustInterop
  extend Fiddle::Importer
  dlload "./interop.dll"
  extern "void void_test()"

  extern "char i8_return_test()"
  extern "unsigned char u8_return_test()"
  extern "short i16_return_test()"
  extern "unsigned short u16_return_test()"
  extern "int i32_return_test()"
  extern "unsigned int u32_return_test()"
  extern "long long i64_return_test()"
  extern "unsigned long long u64_return_test()"

  extern "Vec* vec_return_test()"
  extern "void pass_vec_back_test(Vec*)"

  extern "Vec* vec_return_with_vals_test(char, char)"
end