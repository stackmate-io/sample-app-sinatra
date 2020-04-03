require 'sinatra'
require 'json'
require 'sinatra/reloader' if development?

before do
  content_type :json
end

get '/' do
  {
    success: true,
    deployedby: :stackmate,
    version: '1.0'
  }
end

after do
  response.body = JSON.dump(response.body)
end
