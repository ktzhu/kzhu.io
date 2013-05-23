class App < Sinatra::Base
  enable :sessions
  use ScssEngine
  use CoffeeEngine

  # Configure reloading for dev purposes
  configure :development do
    register Sinatra::Reloader
  end

  # Configure directories so Sinatra knows where to find stuff
  set :views, File.dirname(__FILE__) + '/views'
  set :public_folder, File.dirname(__FILE__) + '/public'

  get '/' do
    File.open('public/index.html', 'w') { |f| f.write(slim :index) }
    slim :index
  end

  get '/about' do
    slim :about
  end

  get '/work' do
    slim :work
  end

  get '/resume' do
    slim :resume
  end

  # Error handling
  not_found do
    'wat'
  end

  if __FILE__ == $0
    App.run! :port => 4000
  end
end
