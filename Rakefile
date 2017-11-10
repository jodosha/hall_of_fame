require 'rake'
require 'hanami/rake_tasks'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = 'spec/**/*_spec.rb'
  t.libs    << 'spec'
  t.warning = false
end

task default: :test
task spec: :test

namespace :contributors do
  desc "Import contributors"
  task import: :environment do
    require "request_via"
    require "json"

    response     = RequestVia::Get.call("https://hanami-contributors.herokuapp.com/api/contributors", headers: { "Accept" => "application/json" })
    contributors = JSON.parse(response.body).fetch("data")

    repository = ContributorRepository.new
    repository.clear

    contributors.each do |contributor|
      repository.create(
        username:      contributor.fetch("github"),
        avatar_url:    contributor.fetch("avatar_url"),
        since:         contributor.fetch("since"),
        commits_count: contributor.fetch("commits_count")
      )
    end

    puts "\n\n\nImported #{contributors.count} contributors"
  end
end
