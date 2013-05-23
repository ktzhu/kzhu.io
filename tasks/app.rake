desc 'Run the app'
task :run do
  system 'bundle exec rackup'
end

task :deploy do
  system 'cd .. && s3cmd sync -r sinatrastrap s3://kzhu.io/'
end
