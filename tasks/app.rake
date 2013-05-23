desc 'Run the app'
task :run do
  system 'bundle exec rackup'
end

task :deploy do
  system 's3cmd sync -r public s3://kzhu.io/'
end
