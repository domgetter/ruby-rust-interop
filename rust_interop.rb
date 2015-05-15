require 'fiddle'
require 'fiddle/import'

module RustInterop
  extend Fiddle::Importer
  dlload "./interop.dll"
  extern "void void_test()"
end