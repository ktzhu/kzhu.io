namespace :assets do
  desc 'Watch SCSS styles and compile new changes'
  task :styles do
    system 'scss --watch assets/scss:public/assets/css/'
  end

  desc 'Watch Coffee scripts and compile new changes'
  task :scripts do
    system 'coffee --watch assets/coffee/*.coffee'
  end
end