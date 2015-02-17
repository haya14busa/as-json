require 'sinatra'
require 'sinatra/jsonp'

require 'open-uri'
require 'yaml'

get '/' do
  'Hello, world'
end

get '/yaml' do
  url = params[:url]
  return 'yaml' if !url
  jsonp YAML.load(open(url).read)
end

