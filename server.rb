require "sinatra"
require "httparty"


get "/" do
  erb :home
end

get "/catalog" do
  erb :catalog
end

get "/layout" do
  erb :layout
end

get "/results" do
  erb :results
end

# remember to bundle install when I'm using my own computer
