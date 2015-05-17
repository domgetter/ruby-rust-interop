task :build do
  puts "\nBuilding dynamic libraries...\n\n"
  if system('rustc src/interop.rs --crate-type=dylib -A overflowing-literals')
  else
    puts "\n\tSomething went wrong during compilation.  Please"
    puts "\tcheck your .rs files for errors.\n"
    $totally_bad_global_for_build = false
  end
end

task :run do
  load 'interop.rb'
end

task :build_and_run do
  $totally_bad_global_for_build = true
  Rake::Task['build'].execute
  if $totally_bad_global_for_build
    Rake::Task['run'].execute
  end
end

task :default do
  Rake::Task['build_and_run'].execute
end