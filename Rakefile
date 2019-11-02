require 'rspec/core/rake_task'

task :default => [:spec]

Rake::TestTask.new do |task|
  task.pattern = 'test/*_test.rb'

desc "Rspec tests."
RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = "spec/*_spec.rb"
end