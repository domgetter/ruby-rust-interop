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
end