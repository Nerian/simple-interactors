#!/usr/bin/env rake

require "simple-interactors"

desc "Build"
task "build" do
  system("gem build simple-interactors.gemspec")
end

desc "Build and publish the gem"
task :publish => :build do
  tags = `git tag`.split
  current_version = SimpleInteractors::VERSION
  system("git tag -a #{current_version} -m 'Release #{current_version}'") unless tags.include?(current_version)
  system("gem push simple-interactors-#{current_version}.gem")
  system("git push --follow-tags")
end

task :release => :publish do
end
