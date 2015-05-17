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

  extern "void  i8_pass_test(char)"
  extern "void  u8_pass_test(unsigned char)"
  extern "void i16_pass_test(short)"
  #extern "void u16_pass_test(unsigned short)"
  #extern "void i32_pass_test(int)"
  #extern "void u32_pass_test(unsigned int)"
  #extern "void i64_pass_test(long long)"
  #extern "void u64_pass_test(unsigned long long)"

  extern "Vec* vec_return_test()"
  extern "void pass_vec_back_test(Vec*)"

  extern "Vec* vec_return_with_vals_test(char, char)"

  extern "String* string_return_test()"
  extern "void pass_string_test(char*)"

  extern "String* string_return_with_vals_test(String*)"
  extern "String* build_string_array(char*)"
end