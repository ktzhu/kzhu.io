require 'rubygems'
require 'bundler/setup'
require 'slim'

@html_layouts = Hash.new

Dir.glob('views/*.slim').each do |full_filename|
  slim_layout = File.open(full_filename, 'r').read
  layout = Slim::Template.new { slim_layout }
  filename = full_filename.split('/').last.split('.').first
  @html_layouts[filename] = layout.render
end

@html_layouts.each do |key, val|
  file = File.open("public/#{key}.html", 'w+')
  file.write(val)
end
