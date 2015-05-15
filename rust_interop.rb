require 'fiddle'
require 'fiddle/import'

module RustInterop
  extend Fiddle::Importer
  dlload "./interop.dll"
  extern "void void_test()"
  extern "char i8_return_test()"
  extern "unsigned char u8_return_test()"
end