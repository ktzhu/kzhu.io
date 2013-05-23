desc 'Run the app'
task :run do
  system 'bundle exec rackup'
end

task :deploy do
  system 's3cmd put -r public/* s3://kzhu.io/'
end
