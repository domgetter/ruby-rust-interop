task :build do
  system 'rustc src/interop.rs --crate-type=dylib'
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