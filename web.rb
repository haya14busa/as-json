require 'sinatra'
require 'sinatra/jsonp'

require 'open-uri'
require 'yaml'

require 'rdiscount'

get '/' do
  markdown :README
end

get '/yaml' do
  url = params[:url]
  return 'yaml' if !url
  jsonp YAML.load(open(url).read)
end

