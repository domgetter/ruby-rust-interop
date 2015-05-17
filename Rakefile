task :build do
  puts "Building dynamic libraries..."
  if system('rustc src/interop.rs --crate-type=dylib')
  else
    puts "\n\tSomething went wrong during compilation.  Please"
    puts "\tcheck your .rs files for errors.\n"
  end
end

task :run do
  load 'interop.rb'
end

task :build_and_run do
  Rake::Task['build'].execute
  Rake::Task['run'].execute
end

task :default do
  Rake::Task['build_and_run'].execute
end